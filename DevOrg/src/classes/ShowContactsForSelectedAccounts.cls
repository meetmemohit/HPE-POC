public class ShowContactsForSelectedAccounts {
    
    public List<WrapAccountObj> wrapacc{get;set;}
    public List<Account> acc{get;set;}
    public List<Account> accon{get;set;}
    public List<Contact> con{get;set;}
    public boolean showresult{get;set;}
        
    public ShowContactsForSelectedAccounts(){
    	showresult = true;
        con = new List<Contact>();
        acc = new List<Account>();
        acc = [Select Id, Name, BillingState, Phone from Account LIMIT 10];
        if (wrapacc == null){
            wrapacc = new List<WrapAccountObj>();
            for(Account at: acc){
               wrapacc.add(new WrapAccountObj(at));                
            }
        }
    }
    
    public void ProcessSelected(){
        showresult = false;
        accon = new List<Account>();
        for(WrapAccountObj wa: wrapacc){
            if(wa.sel == true){
                accon.add(wa.ac);
            }
        }
       // con = new List<Contact>();
        con = [Select Id, Name, Account.Name from Contact where AccountId IN :accon];       
    }
        
    public class WrapAccountObj{
        public Account ac{get;set;}
        public boolean sel{get;set;}
       // public List<Contact> cont{get;set;}
    	
    	public WrapAccountObj(Account a){
            ac = a;
            sel = false;
        }     
    } 
}