trigger OpportunityTrigger on Opportunity (before insert, after insert, before update, after update) {
    
    OpportunityTriggerHandler oppTrig = new OpportunityTriggerHandler();
    
    if(trigger.isUpdate && trigger.isAfter){
        
        oppTrig.afterUpdate(trigger.new, trigger.old, trigger.newMap, trigger.oldMap);
    }
    if(trigger.isInsert && trigger.isAfter){
        oppTrig.afterInsert(trigger.new, trigger.old, trigger.newMap, trigger.oldMap);

    }
    
}