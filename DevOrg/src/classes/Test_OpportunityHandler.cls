@isTest
private class Test_OpportunityHandler{
  static testMethod void Test_ApplyDiscount(){
  //insert a new account record  
    Account acc = new Account(Name='Mohan');
    insert acc;
  //create a new opportunity record
    Opportunity opp = new Opportunity(Name='My Test Opp',AccountID=acc.ID,
    Type='New Customer',Amount=10000,StageName='Prospecting',CloseDate=System.today());
    insert opp;
  //fetch the amount field from the database
    opp = [Select Id, Amount from Opportunity where id=:opp.id];
    
   //System.AssertEquals(9000,opp.amount);  
    System.debug('Amount stored on DB '+opp.amount);
    
 }  
  //Test update trigger  
  static testMethod void Test_RestrictStatusChange(){
    Account acc = new Account(Name='Mohan');
    insert acc;
    Opportunity opp = new Opportunity(Name='My Test Opp',AccountID=acc.ID,
    Type='New Customer',Amount=10000,StageName='Prospecting',CloseDate=System.today());
    insert opp;    
    opp = [Select Id, StageName from Opportunity where id=:opp.id];  
    opp.StageName = 'Closed Won';
    update opp;
    opp = [Select Id, StageName from Opportunity where id=:opp.id];  
    system.debug('New updated value of StageName -->' +opp.stagename);
    opp.stagename = 'Prospecting';
    try {  
    Update opp;
    //System.Assert(false, 'You can not change the stage of a closed won opp.');  
    }catch(DMLException e){  
    //System.assert(true, 'You can change the stage of a closed won opp.');
}   
   }
   //Test delete trigger  
  static testMethod void Test_StopDeleting(){
    Account acc = new Account(Name='Mohan');
    insert acc;
    Opportunity opp = new Opportunity(Name='My Test Opp',AccountID=acc.ID,
    Type='New Customer',Amount=10000,StageName='Prospecting',CloseDate=System.today());
    insert opp;    
    try {  
    delete opp;  
   // System.Assert(false, 'You cannot delete this opportunity');  
    }catch(DMLException e){  
    //System.assert(true, 'You can delete this opportunity');
    }
    
   }
 }