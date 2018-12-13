trigger CustOpp on Opportunity(after insert) {
  
  CRMOpportunityTriggerHandler opphandler = new CRMOpportunityTriggerHandler();
  
    If(Trigger.isInsert && Trigger.isAfter){
        
        opphandler.afterInsert(trigger.new, trigger.newmap);
    }
}