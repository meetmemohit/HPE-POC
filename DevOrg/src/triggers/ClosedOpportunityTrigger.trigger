trigger ClosedOpportunityTrigger on Opportunity (After insert, before update) {
    
    OpportunityTriggerHandler opphandler = new OpportunityTriggerHandler();
    If(Trigger.IsUpdate || Trigger.IsInsert){
       
        opphandler.CreateNewTask(trigger.new);
        
    }  
  }