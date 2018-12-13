trigger AccountTrigger on Account (before insert, after insert, before update, after update, before delete, after delete, after undelete) {
	
    AccountTriggerHelperClass acchlp = new AccountTriggerHelperClass();
    /*
    if(Trigger.isInsert && Trigger.isBefore){
        system.debug('trigger.new -->' + trigger.new);
        system.debug('trigger.old -->' + trigger.old);
        system.debug('trigger.newmap -->' + trigger.newmap);
        system.debug('trigger.oldmap -->' + trigger.oldmap);
        acchlp.beforeinsert(Trigger.new);
    }*//*
    if(Trigger.isUpdate && Trigger.isBefore){
        system.debug('trigger.new -->' + trigger.new);
        system.debug('trigger.old -->' + trigger.old);
        system.debug('trigger.newmap -->' + trigger.newmap);
        system.debug('trigger.oldmap -->' + trigger.oldmap);
        acchlp.beforeupdate(Trigger.new, trigger.old, trigger.newmap, trigger.oldmap);
    }*/
    if(Trigger.isUpdate && Trigger.isafter){
        system.debug('trigger.new -->' + trigger.new);
        system.debug('trigger.old -->' + trigger.old);
        system.debug('trigger.newmap -->' + trigger.newmap);
        system.debug('trigger.oldmap -->' + trigger.oldmap);
        acchlp.afterupdate(Trigger.new, trigger.old, trigger.newmap, trigger.oldmap);
    }
/*   
    if(Trigger.isInsert && trigger.isAfter){
        system.debug('trigger.new -->' + trigger.new);
        system.debug('trigger.old -->' + trigger.old);
        
        acchlp.afterInsert(Trigger.new, Trigger.old, Trigger.newmap, Trigger.oldmap);
    }


    if(Trigger.isdelete && Trigger.isbefore){
        system.debug('trigger.new -->' + trigger.new);
        system.debug('trigger.old -->' + trigger.old);
        system.debug('trigger.newmap -->' + trigger.newmap);
        system.debug('trigger.oldmap -->' + trigger.oldmap);
        acchlp.beforedelete(Trigger.new, trigger.old, trigger.newmap, trigger.oldmap);
    }
*/
}