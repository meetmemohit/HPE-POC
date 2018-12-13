global class LeadProcessor implements Database.Batchable<sObject>{
    
    global Database.QueryLocator start(Database.BatchableContext bc){
        String query = 'Select Id, LeadSource from Lead where IsConverted = false';   
        return Database.getQueryLocator(query);
    }
    
    global void execute(Database.BatchableContext bc , List<Lead> scope){
        
        List<Lead> leadList = new List<Lead>();
        system.debug('Record fetced @@@@' + scope);
        
        for(Lead l: scope){
            
            l.LeadSource = 'Dreamforce';
            leadList.add(l);
            
        }
        
        update(leadList);
    }
    
    global void finish(Database.BatchableContext bc){}
    
    

}