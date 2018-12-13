global class MyFirstBatchApex implements Database.Batchable<SObject>{
 String query;
 global Database.Querylocator start(Database.BatchableContext BC){
   query = 'Select id,name,Description from Account';
   return Database.GetQueryLocator(query);
 }  
 global void execute(Database.BatchableContext BC, List<Account> scope){
   list<account> acclist = new list<account>();
   for(account a : scope){
     a.description = 'Update by Batch apex Second time';
     acclist.add(a);
   }
   update acclist;
  } 
 global void finish(Database.BatchableContext BC){
  }  
}