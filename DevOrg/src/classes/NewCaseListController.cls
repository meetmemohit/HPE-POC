public class NewCaseListController {
    
    public List<Case> getNewCases(){
        list<case> results = [select id, CaseNumber from Case where Status='New'];
        return results;
        
    } 

}