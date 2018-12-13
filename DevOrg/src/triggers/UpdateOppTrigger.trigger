trigger UpdateOppTrigger on Opportunity (before insert, before update, before delete) {

 List<Opportunity> newopp = trigger.new;
 List<Opportunity> oldopp = trigger.old;
 if(trigger.isInsert||trigger.isUpdate){
 OpportunityHandler.ApplyDiscount(newopp);
 }
 if(trigger.isDelete){
 OpportunityHandler.StopDeleting(oldopp);
 }
 if(trigger.isUpdate){
 OpportunityHandler.RestrictStatusChange(oldopp, newopp);
}
}