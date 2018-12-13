public class SumAccount {

    public double num3{get;set;}
    public Account acc;
    public SumAccount(ApexPages.StandardController controller){
               
    }

    public void Result(){
     
     Account acc = [select NumberOfEmployees, NumberofLocations__c, Annualrevenue from account WHERE Id = :ApexPages.currentPage().getParameters().get('id')];
     num3 = acc.NumberOfEmployees + acc.NumberofLocations__c + acc.Annualrevenue;
    }
}