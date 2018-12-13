public with sharing class SearchAllCont {

    public SearchAllCont() {

    }

    
    public String activity{get;set;}
    List<Positions__c> results;
    public String searchText { get; set; }
   // Public Positions__c recordid;
    public String recordid{get;set;}
    public List<Positions__c> getResults(){
        return results;
    }
    public SearchAllCont(ApexPages.StandardController controller) {
        recordId  = ApexPages.CurrentPage().getparameters().get('id');
    } 
    
    public PageReference DoSearch(){
     // results = [SELECT (SELECT WhoId, IsTask, ActivityDate, Status, Priority, OwnerId FROM OpenActivities), 
     //           (SELECT WhoId, IsTask, ActivityDate, Status, Priority, OwnerId FROM ActivityHistories) FROM Positions__c where Id = :currentRecordId]; 
      results = [SELECT (SELECT l.WhoId, l.IsTask, l.ActivityDate, l.Status, l.Priority, l.OwnerId FROM OpenActivities l)  
                FROM Positions__c where Id = :recordId]; 
     
      return null;
    }

}