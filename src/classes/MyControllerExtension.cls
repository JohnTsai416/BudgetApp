public class MyControllerExtension {
    private Account acct;
    
    // The extension constructor initialize the private member variable acct
    // by using the getRecord method from the standard controller.
    public myControllerExtension(ApexPages.StandardController stdController) {
      	this.acct = (Account)stdController.getRecord();
    }
    
    public String getGreeting() {
        return 'Hello ' + acct.Name + ' ( ' + acct.Id + ' ) ';
    }
    
    public PageReference save() {
        upsert acct;
        return null;
    }
}