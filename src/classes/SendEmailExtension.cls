public class SendEmailExtension {
    // Reference to standard controller so that we an utilize it's functionality
    ApexPages.StandardController ctrl;
    
    public SendEmailExtension(ApexPages.StandardController stdController) {
        this.ctrl = stdController;
    }
    
    public PageReference save() {
        try {
            insert ctrl.getRecord();
            ApexPages.Message msg = new ApexPages.Message(ApexPages.Severity.CONFIRM, 'Student Inserted');
            
            ApexPages.addMessage(msg);
            sendEmail(ctrl.getRecord());
        } catch (DMLException dmle) {
            ApexPages.Message msg = new ApexPages.Message(ApexPages.Severity.ERROR, 'ERROR: ' + dmle.getMessage());
            
            ApexPages.addMessage(msg);
        }
        
        return reset();
    }
    
    private void sendEmail(sObject record) {
        Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
        
        List<String> toAddress = new List<String> {'jlebowski@budget.com'};
        
        mail.setToAddresses(toAddress);
        mail.setSubject('New Record Created: ' + record.Id);
        mail.setPlainTextBody('Your record: ' + record.Id + 'has been created');
        
        Messaging.sendEmail(new List<Messaging.SingleEmailMessage> {mail});
    }
    
    private PageReference reset() {
        PageReference newPage = new PageReference(System.currentPageReference().getURL());
        newPage.setRedirect(true);
        
        return newPage;
    }
}