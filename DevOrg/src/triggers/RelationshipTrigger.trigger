trigger RelationshipTrigger on Relationship__c (after update, before update) {
    
    RelationshipTriggerHandler relHandler = new RelationshipTriggerHandler();
    
    if(Trigger.isUpdate && Trigger.isAfter){
        
        relHandler.afterUpdate(Trigger.new, Trigger.old, Trigger.newmap, Trigger.oldmap);
    }
    
    if(Trigger.isUpdate && Trigger.isBefore){
        relhandler.beforeUpdate(Trigger.new, Trigger.old, Trigger.newMap, Trigger.oldMap);
        
    }

}