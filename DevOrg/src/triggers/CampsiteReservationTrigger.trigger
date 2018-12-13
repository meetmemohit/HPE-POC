trigger CampsiteReservationTrigger on Campsite_Reservation__c (before delete) {
    CampsiteReservationTriggerHandler cmphdl = new CampsiteReservationTriggerHandler();
    if(Trigger.isDelete && Trigger.IsBefore){
    	cmphdl.beforedelete(Trigger.old, Trigger.oldMap);
    }

}