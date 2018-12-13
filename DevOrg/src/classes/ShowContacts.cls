public with sharing class ShowContacts {

    Public List<Contact> conlist{get; set;}
    
    String accid = Apexpages.currentPage().getParameters().get('accid');
    
    public ShowContacts(){
      if (accid != null){
          conlist = [select id, firstname, lastname from Contact where accountid=:accid];
      }
    }
    public PageReference Cancel() {
    
      return null;
       
    }

}