@isTest
public class SumAccount_Test {

    public static TestMethod void SumTest(){
        Account acc = new account(name='Test12', NumberOfEmployees=20, NumberofLocations__c=2, Annualrevenue=3000);
        insert acc;
        Account a = [Select id from Account where name=:acc.name];
        Test.startTest();
          apexPages.StandardController ctr = new apexpages.StandardController(acc);
          SumAccount tst=new SumAccount(ctr);
          PageReference ref = new PageReference('/apex/Account_Total'); //Set the page reference to the apex page
          Test.setCurrentPage(ref);//set the reference in the Test class
          //set the value of Account Id in the Apex class which is used in the SOQL query in the Result method
          ref.getParameters().put('id', String.valueOf(acc.Id));          
          tst.Result(); //call the result method in the test class
        Test.stopTest();

    }
}