global class ContactBatchApex implements Database.Batchable<Sobject>{
    
    global Database.QueryLocator start(Database.BatchableContext bc){
        String query = 'Select Id, Phone from Contact offset 12';
        return Database.getQueryLocator(query);
    }
    
    global void execute(Database.BatchableContext bc, List<Contact> scope){
        
        List<Contact> con = new List<Contact>();
        
        for(Contact c: scope){
            c.phone = '100001';
            con.add(c);
        }
        
        update con;
        
    }
    
    global void finish(Database.BatchableContext bc){}
}