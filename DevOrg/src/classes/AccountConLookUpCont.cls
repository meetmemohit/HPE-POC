public class AccountConLookUpCont {
    Public Contact con{get;set;}
    public String id{get;set;}
    public String contacts{get;set;}
    public AccountConLookUpCont(ApexPages.StandardController cont){
     //   con = new Contact();
        //get the is of the parent record
        id = ApexPages.currentPage().getParameters().get('id');
        
    }
    
    Public void SaveRecord(){
        System.debug('Value of selected Account -->' + con.AccountId);
        
    }
    
    public pagereference getAccountDetails(){
        
        id = ApexPages.currentPage().getParameters().get('id');
        System.debug('Value of selected Account -->' + id);
        List<Contact> cont = [select id, name from Contact where AccountId = :id];
        System.debug('Value of selected Account -->' + cont.size());
        System.debug('Value of selected Account -->' + cont);
        If (cont.size() > 0){
            contacts = '1';
        }else{
            contacts = '0';
        }
        return null;
    }
    
}