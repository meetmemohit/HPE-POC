public class AccountTriggerHelperClass {
    
    public void beforeUndelete(List<Account> newacc, List<Account> oldacc, Map<id, Account> newmapacc, Map<id, Account> oldmapacc){
    	
    }
        
        /*
    public void beforeinsert(List<Account> accnew){
        list<account> acclist = new list<account>();
        for(Account a: accnew){
           a.Description = 'I m getting updated thru trigger';
           acclist.add(a);
        }
        insert acclist;
      }
    
    public void afterinsert(List<Account> newacc, List<Account> oldacc, Map<id, Account> newmapacc, Map<id, Account> oldmapacc){
        list<account> acclist = new list<account>();
        for (account a: newacc){
            if(a.ShippingStreet == null){
                account an = new account();
                an.ShippingStreet = 'new address';
                an.id = a.id;
                acclist.add(an);
       		}
        }
       delete acclist;
      }

    public void afterInsert(List<Account> newacc, List<Account> oldacc, Map<Id, Account> newMapAcc, Map<Id, Account> oldMapAcc ){
        
        
        Account ab = new Account(name='Mohit');
        
        for(Account a: newmapAcc.values()){
            if (ab.Name == newmapAcc.get(a.id).name) {
                
                newMapAcc.put(a.id,ab);
                
                System.debug('Valued of Id #### --> ' + newmapAcc.get(a.Id).Id);
                System.debug('Valued of Id #### --> ' + newmapAcc.get(a.Id).Name);
                
            }else{
                System.debug('Display Map Data 1 --> ###' + newmapAcc );
        		System.debug('Display Map Data 2 --> ###' + newmapAcc.keySet() );
        		system.debug('Display Map Data 3 -> #### ' + newmapAcc.values() );
            }
                 
            
            
        }
                       
            
        }
    
    public void beforeupdate(List<Account> newacc, List<Account> oldacc, Map<id, Account> newmapacc, Map<id, Account> oldmapacc){
        list<account> acclist = new list<account>();
        for (account a: newacc){
            if(a.ShippingStreet == 'old address'){
                account an = new account();
                an.ShippingStreet = 'new address';
                an.id = a.id;
                acclist.add(an);
                a.ShippingStreet = 'new address';
       		}
        }
        //update acclist;
      }*/
    public void afterupdate(List<Account> newacc, List<Account> oldacc, Map<id, Account> newmapacc, Map<id, Account> oldmapacc){
        list<account> acclist = new list<account>();
        for (account a: oldacc){
            if(a.ShippingStreet == 'new address'){
                account an = new account();
                an.ShippingStreet = 'old address';
                an.id = a.id;
                acclist.add(an);
       		}
        }
        update acclist;
      } 
    /*
     public void beforedelete(List<Account> newacc, List<Account> oldacc, Map<id, Account> newmapacc, Map<id, Account> oldmapacc){
        list<account> acclist = new list<account>();
        for (account a: oldacc){
            if(a.ShippingStreet == null){
                system.debug('#####I am here');
                account an = new account();
                an.name = 'Ramesh New 3';
                //an.id = a.id;
                acclist.add(an);
       		}
        }
       insert acclist;
      }*/
    
        
        
    }