public class ProcessSelectedAccounts {
    public List<WrapAccount> listWrapAcc{get;set;}
    public List<Account> listAllAccounts{get;set;}
    public List<Account> wrapac{get;set;}
    public boolean selectedCheckbox{get;set;}
    public ProcessSelectedAccounts(){
        listAllAccounts = new List<Account>();
    	listAllAccounts = [Select Id, Name,BillingState, Website, Phone, (Select Name from Contacts) from Account LIMIT 10 ];
        system.debug('Account List @@@' + listAllAccounts);
        if(listWrapAcc == null){
            listWrapAcc = new List<WrapAccount>();
        	for(Account acc: listAllAccounts){
           		listWrapAcc.add(new WrapAccount(acc));                
        	}
        }  
    }
    
    public void processselected(){
        wrapac = new List<Account>();
        for(WrapAccount wa: listWrapAcc){
            system.debug('@@@@@' + wa.sel);
            if(wa.sel == true){
               wrapac.add(wa.acc); 
            }
        }
        system.debug('@@@@@' + wrapac);
    }
    
    public class WrapAccount{
        public Account acc{get;set;}
        public boolean sel{get;set;}
        
        public WrapAccount(Account a){
            acc = a;
            sel = false;
        }
    }
}