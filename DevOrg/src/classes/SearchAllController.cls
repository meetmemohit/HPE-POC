public with sharing class SearchAllController {

    public String nam { get; set; }
    public String CurrentRecordId{get;set;}
    public String activity{get;set;}
    List<Positions__c> results;
    public String searchText { get; set; }
    Public Positions__c pos{get; set;}

    public SearchAllController() {
      //  currentRecordId  = ApexPages.CurrentPage().getparameters().get('id');
        pos = [Select Id, OwnerId , Name from Positions__c where Id =:ApexPages.CurrentPage().getParameters().get('id')];
        System.debug('Record Id is --> ' + currentRecordId);
         }
    
     public PageReference cancel() {
        PageReference pageRef = new PageReference('/' + System.currentPagereference().getParameters().get('Id'));
        pageRef.setRedirect(true);
        return pageRef;
    }
    public List<Positions__c> getResults(){
        return results;
    }
     public PageReference DoSearch(){
     // results = [SELECT (SELECT WhoId, IsTask, ActivityDate, Status, Priority, OwnerId FROM OpenActivities), 
     //           (SELECT WhoId, IsTask, ActivityDate, Status, Priority, OwnerId FROM ActivityHistories) FROM Positions__c where Id = :currentRecordId];
     /* system.debug('The activity to be searched is :' + searchText); 
       currentRecordId  = ApexPages.CurrentPage().getparameters().get('id'); */
      System.debug('Record Id is --> ' + pos.id);
      System.debug('String to be searched is --> '+ searchtext); 
      
      results = [SELECT (SELECT WhoId, WhatId, Subject, IsTask, ActivityDate, Status, Priority, OwnerId 
                FROM OpenActivities where Subject Like :searchText) FROM Positions__c where Id = :pos.Id ];
      //searchText = '*' + searchText + '*';   
      //resutls = [Find :searchText RETURNING OpenActivities (WhoId, WhatId, Subject, IsTask, ActivityDate, Status, Priority, OwnerId)]; 
         for(Positions__c post:results){
          for(OpenActivity oa: post.OpenActivities){
          System.debug('***'+oa.Status);
          }
      } 
          System.debug('Result fetched is --> ' + results); 
      return null;
    }

}