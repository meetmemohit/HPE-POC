public with sharing class Custcontroller1 {

    public PageReference save() {
        update account;
        return null;
    }

   
   public Account account;

    public Custcontroller1(){
      account = [Select id, name from Account where id = :ApexPages.currentPage().getParameters().get('id')];
    }
    
    public Account getAccount() {
        return account;
    }

}