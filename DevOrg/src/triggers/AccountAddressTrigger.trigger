trigger AccountAddressTrigger on Account (before insert, before update ) {
       
    AccountTriggerHandler acchandler = new AccountTriggerHandler(); 
    if(Trigger.IsInsert || Trigger.IsUpdate){
        acchandler.BillingCodeUpdate(trigger.new);
    }
}