global class AccountBatch1 implements Database.Batchable<sObject>{
    global Database.QueryLocator start(Database.BatchableContext BC){
    string query = 'select Id, Name, ShippingStreet, AnnualRevenue from Account Limit 5';
    return Database.getQueryLocator(query);
   }
   global void execute(Database.BatchableContext BC, List<Account> scope){
       List<Account> acclist = new List<Account>();
       for(Account a: scope){
           a.ShippingStreet = 'updated from batch1';
           a.name = 'Ashish';
           
      }
    }
    //iLCvKRTP6L2AUN4j8QYyTbePAAAAAA
    ///
    //DSDSDDSDSDSDSDDSsdad
   global void finish(Database.BatchableContext BC){
       Id batchId = Database.executeBatch(new AccountBatch2(5));
       
   }
}