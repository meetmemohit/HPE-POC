global class JobScheduler implements Schedulable {
    
    global void execute(SchedulableContext sc){
        
       // ContactBatchApex contbtch = new ContactBatchApex();
        //Id batchId = Database.executeBatch(contbtch);
        ScheduledAccInsert sche = new ScheduledAccInsert();
        sche.insrt();
        
    }

}