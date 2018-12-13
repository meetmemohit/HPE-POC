@isTest
public class AccountProcessorTest {
    
    public static testmethod void AccountProcessorTest(){
       Account accTest1 = new Account(name='Mohit test1');
       insert accTest1;
       Account accTest2 = new Account(name='Mohit test2');
       insert accTest2;
       Contact con1 = new Contact(AccountId = accTest1.id, FirstName = 'Mohit', LastName = 'Srivastava');
       insert con1;
       Contact con2 = new Contact(AccountId = accTest2.Id, FirstName = 'Ashwini', LastName = 'Patil');
       Insert con2;
       List<Id> Ids = new List<Id>();
       Ids.add(accTest1.Id);
       Ids.add(accTest2.Id);
	   Test.startTest();
       	AccountProcessor.countContacts(Ids);        
       Test.stopTest();
    }

}
/*
@IsTest
public class AccountProcessorTest {
    public static testmethod void TestAccountProcessorTest()
    {
        Account a = new Account();
        a.Name = 'Test Account';
        Insert a;
        Contact cont = New Contact();
        cont.FirstName ='Bob';
        cont.LastName ='Masters';
        cont.AccountId = a.Id;
        Insert cont;
        List<Id> setAccId = new List<Id>();
        setAccId.add(a.id);
        Test.startTest();
            AccountProcessor.countContacts(setAccId);
        Test.stopTest();
        Account ACC = [select Number_of_Contacts__c from Account where id = :a.id LIMIT 1];
        System.assertEquals ( Integer.valueOf(ACC.Number_of_Contacts__c) ,1);
  }
}*/