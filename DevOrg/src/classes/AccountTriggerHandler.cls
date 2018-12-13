public class AccountTriggerHandler {
    
    public void BillingCodeUpdate(List<Account> acc){
        
        for(account a : acc){
            if (a.Match_Billing_Address__c == true){
                a.ShippingPostalCode = a.BillingPostalCode;
                system.debug('a.BillingPostalCode@@@@@' + a.BillingPostalCode);
                system.debug('a.ShippingPostalCode@@@@@' + a.ShippingPostalCode);
            }
        }   
    }
}