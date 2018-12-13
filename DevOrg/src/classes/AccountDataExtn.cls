public class AccountDataExtn {
    
    public string title{get;set;}
    public boolean checkbox{get;set;}
    public AccountDataExtn(ApexPages.StandardController controller){
        title = 'Account Details';
        checkbox = true;
        	
        
    }
    
    public PageReference Redirect(){
       /* PageReference pageref = new PageReference();
        pageref = '/apex/DisplayAllAccounts';
        return pageref; */
        return new PageReference('/apex/DisplayAllAccounts');
    }
    
    

}