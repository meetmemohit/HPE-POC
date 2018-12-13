public class AccountHandler {

    public static Account insertNewAccount (String accName){
        try{
            Account a = new Account(Name=accName);
            insert a;
            return a;
        } catch(Exception e){
            System.Debug('Account not created -->' + e);
            return null;
        }
        
    }    
}