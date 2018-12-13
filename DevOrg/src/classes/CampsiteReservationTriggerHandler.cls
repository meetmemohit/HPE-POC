public class CampsiteReservationTriggerHandler {

    
    public void beforedelete(List<Campsite_Reservation__c> oldCamp, Map<id, Campsite_Reservation__c> oldCampMap){
        
        for(Campsite_Reservation__c cr: oldcamp){
            
            cr.adderror('You are not allowed to delete the record');
        }
        
    }
}