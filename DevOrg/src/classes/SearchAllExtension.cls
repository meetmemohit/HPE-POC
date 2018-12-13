public with sharing class SearchAllExtension {

    public SearchAllExtension() {

    }

    public String CurrentRecordId{get;set;}
    public String activity{get;set;}
    List<Positions__c> results;
    public String searchText { get; set; }
    
    public List<Positions__c> getResults(){
        return Results;
    }
    public SearchAllExtension(ApexPages.StandardController controller) {
        currentRecordId  = ApexPages.CurrentPage().getparameters().get('id');
    }
    
    public PageReference DoSearch(){
       results = [SELECT (SELECT WhoId, IsTask, ActivityDate, Status, Priority, OwnerId FROM OpenActivities l)  
                FROM Positions__c where Id = :currentRecordId]; 
       return null;
    }

}