trigger LeadTrigger on Lead (before insert, before update, before delete) {

    LeadTriggerHandler leadHandler = new LeadTriggerHandler();
    
    if (trigger.isInsert && trigger.isBefore){
        
        leadHandler.beforeInsert(trigger.new, trigger.old);
    }
    
    if (trigger.isBefore && trigger.isUpdate){
        
        leadHandler.beforeUpdate(trigger.new);
    
    }
    if (trigger.isAfter && trigger.isUpdate){
        
        leadHandler.AfterUpdate(trigger.new);
    
    }


}