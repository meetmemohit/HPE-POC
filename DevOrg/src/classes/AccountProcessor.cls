public class AccountProcessor {
     
    @future
    public static void countContacts(List<Id> Ids){
        
	List<AggregateResult> result = [Select AccountId, Count(Id)  cnt from Contact where AccountId in :Ids GROUP BY AccountId];
        system.debug('records fetched @@@@@' + result);
        List<Account> acc = new List<Account>();
        for(Id i : Ids){
            Account a = new Account();
            for(AggregateResult ar: result){
                if(ar.get('AccountId') == i){
                    a.Number_of_Contacts__c = Integer.valueOf(ar.get('cnt'));
                    a.Id = i;
                    acc.add(a);
                }
            }
            
            
        }
        update acc;
      }
}