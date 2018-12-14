global class AccountBatch2 implements Database.Batchable<sObject>{
    global final Integer value;
    global accountbatch2(Integer v){
        value = v;
    }
    global Database.QueryLocator start(Database.BatchableContext BC){
    string query = 'select Id, Name, ShippingStreet, AnnualRevenue from Account LIMIT 10';
    return Database.getQueryLocator(query);
   }
   global void execute(Database.BatchableContext BC, List<Account> scope){
       List<Account> acclist = new List<Account>();
       for(Account a: scope){
          a.ShippingStreet = 'updated from batch2';
      }
    }
    //Test Commit - Mohit
   global void finish(Database.BatchableContext BC){
   }
}