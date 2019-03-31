public class CustomControllerExample {
    public Class__c myClass {get; set;}
    
    public CustomControllerExample() {
        // put id into url
        ApexPages.currentPage().getParameters().put('id', 'a041U000005nhUjQAI');
        // grab class id from URL
        ID classId = ApexPages.currentPage().getParameters().get('id');
        myClass = [SELECT Id, Name FROM Class__c WHERE Id = :classId];
    }
    
    public PageReference save() {
        update myClass;
        return null;
    }
}