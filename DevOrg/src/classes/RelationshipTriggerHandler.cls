public class RelationshipTriggerHandler {

    public void afterUpdate(Relationship__c[] newRels, Relationship__c[] oldRels, Map<id, Relationship__c> newMapRels, Map<id, Relationship__c> oldMapRels){
        
		updateOppToPrivate(newRels, oldRels, newMapRels, oldMapRels);        
    }
    
    public void beforeUpdate(Relationship__c[] newRels, Relationship__c[] oldRels, Map<Id, Relationship__c> newMapRels, Map<Id, Relationship__c> oldMapRels){
        updatePreviousPRA(newRels, oldRels, newMapRels, oldMapRels);
    }
    
    public void updateOppToPrivate(Relationship__c[] newRels, Relationship__c[] oldRels, Map<Id, Relationship__c> newMapRels, Map<Id, Relationship__c> oldMapRels ){
        
        List<Opportunity> opplist = new List<Opportunity>();
        List<Opportunity> oppupdlist = new List<Opportunity>();
        
        opplist = [Select id, Relationship__c from Opportunity where Relationship__c IN :newMapRels.keySet()];
        
        for(Opportunity opp: opplist){
            if(newMapRels.get(opp.Relationship__c).Private__c != oldMapRels.get(Opp.Relationship__c).Private__c){
                opp.Private__c = newMaprels.get(opp.Relationship__c).Private__c;
                oppupdlist.add(opp);
            }
            
            if(oppupdlist.size() > 0){
                
                update oppupdlist;
                
            }
           
        }
    }
    
    public void updatePreviousPRA(Relationship__c[] newRels, Relationship__c[] oldRels, Map<Id, Relationship__c> newMapRels, Map<Id, Relationship__c> oldMapRels){
        List<Relationship__c> relupdlist = new List<Relationship__c>();
        
        for(Relationship__c rel: newRels){
            if(rel.Primary_Relationship_Advisor__c != oldMapRels.get(rel.id).Primary_Relationship_Advisor__c){
                 rel.Previous_PRA__c = oldMapRels.get(rel.id).Primary_Relationship_Advisor__c;                
                
            }
            
        }
    }
}