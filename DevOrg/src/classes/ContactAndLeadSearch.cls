public class ContactAndLeadSearch {
    
    public static List<List<Sobject>> searchContactsAndLeads(String srchname){
        List<list<Sobject>> result = [FIND :srchname IN All FIELDS RETURNING Lead(FirstName, LastName), Contact(FirstName, LastName)];
        return result;
        
    }

}