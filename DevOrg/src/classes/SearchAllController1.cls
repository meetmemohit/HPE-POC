public with sharing class SearchAllController1 {

    public List<Positions__c> results;

    public PageReference doSearch() {
        results = [SELECT (SELECT l.WhoId, l.IsTask, l.ActivityDate, l.Status, l.Priority, l.OwnerId FROM OpenActivities l)  
                FROM Positions__c where Id = :currentRecordId]; 
        return null;
    }


    public String searchText { get; set; }
    public String currentRecordId { get; set; }
}