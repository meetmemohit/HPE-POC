public class ContactSearch {

    public static List<Contact> searchForContacts(string lastnam, String postcode){
        try{
        list<Contact> con = [Select Id,Name from Contact where LastName=:lastnam and MailingPostalCode =:postcode ];
        return con;
        }Catch(DMLException e){
            system.debug('The SOQL has failed with exception -->'+e);
            return null;
            
            
        }
    }
}