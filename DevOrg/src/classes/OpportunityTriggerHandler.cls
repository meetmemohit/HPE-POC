public class OpportunityTriggerHandler {
    
    public void afterUpdate(Opportunity[] newOpp, Opportunity[] oldOpp, Map<Id, Opportunity> newOppMap, Map<Id, Opportunity> oldOppMap){
    	updateOppOwner(newOpp, oldOpp, newOppMap, oldOppMap);  
        
    }
    
    public void afterInsert(Opportunity[] newOpp, Opportunity[] oldOpp, Map<Id, Opportunity> newMapOpp, Map<Id, Opportunity>oldMapOpp){
        insertOppOwner(newOpp, oldOpp, newMapOpp, oldMapOpp);
    }
    
    public void updateOppOwner(Opportunity[] newOpp, Opportunity[] oldMap, Map<Id, Opportunity> newOppMap, Map<Id, Opportunity> oldOppMap){
        List<OpportunityTeamMember> oppTeamMem = new List<OpportunityTeamMember>();
        for(Opportunity opp: newOpp){
            if(opp.OwnerId != oldOppMap.get(Opp.Id).OwnerId){
                OpportunityTeamMember oppTeam = new OpportunityTeamMember();
                oppTeam.OpportunityId = opp.Id;
                oppTeam.UserId = opp.OwnerId;
                oppTeam.TeamMemberRole = 'Owner';
                OppTeamMem.add(oppTeam);
            }          
        }
        if (oppTeamMem.size() > 0){
            insert OppTeamMem;
        }
    }
    
    public void insertOppOwner(Opportunity[] newOpp, Opportunity[] oldOpp, Map<Id, Opportunity> newMapOpp, Map<Id, Opportunity> oldMapOpp){
        List<OpportunityTeamMember> oppteamInsert = new List<OpportunityTeamMember>();
        for (Opportunity o: newOpp){
            OpportunityTeamMember oppt = new OpportunityTeamMember();
            oppt.OpportunityId = o.Id;
            oppt.UserId = o.OwnerId;
            oppt.TeamMemberRole = 'Owner';
            oppteamInsert.add(oppt);
            
        }
        if(oppteamInsert.size() > 0){
            insert oppteamInsert;
            
        }
    
    }
}