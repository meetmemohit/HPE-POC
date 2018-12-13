global class AccountBatchIterableHelper {

    global list<Account> getAccountRecords(){
        
        List<Account> acc = [select Id, Name, ShippingStreet, AnnualRevenue from Account Limit 5 ];
        return acc;
        
    }
}