public class WizardDemoController {
    public String name {get; set;}
    public String email {get; set;}
    public String phone {get; set;}
    
    public PageReference pageOneNext() {
        return Page.page2;
    }
    
    public PageReference pageTwoPrevious() {
        return Page.page1;
    }
    
    public PageReference pageTwoNext() {
        return Page.page3;
    }
    
    public PageReference pageThreePrevious() {
        return Page.page2;
    }
    
    public PageReference pageThreeNext() {
        return Page.page4;
    }
    
    public PageReference pageFourPrevious() {
        return Page.page3;
    }
    
    public PageReference saveContact() {
        Contact c = new Contact();
        c.LastName = name;
        c.Email = email;
        c.Phone = phone;
        insert c;
        
        return (new ApexPages.StandardController(c)).view();
    }
}