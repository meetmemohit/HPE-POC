public class MyNewController {
    public Positions__c pos{get; set;}
    public MyNewController(ApexPages.StandardController controller){
        
        pos = [Select Id, name from Positions__c where 
              id = :ApexPages.currentPage().getparameters().get('id')];
    }
    
    
    

}