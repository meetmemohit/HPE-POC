public class LeadTriggerHandler{

    
    public void beforeInsert(Lead[] newLead, Lead[] oldLead){
        
        Contact cont = new Contact();
        cont.LastName = 'Srivastava';
              
        insert cont;
        /*
        for(Lead l: newLead){
            
            if(l.LastName == 'Patil'){
                l.Title = 'Updated by Before Insert Trigger';
            }
            
        }
        */
    }
    
    public void beforeUpdate(list<Lead> newLead){
    
        for(Lead l: newLead){
        
            if(l.Status == 'Open'){
            l.Industry = 'Enery';
        }
        }
    }
    
    public void afterUpdate(list<Lead> newLead){
        list<Lead> ld = new List<Lead>();
        for(Lead l: newLead){
        
            if(l.Status == 'Open'){
            l.Industry = 'Enery';
            ld.add(l);
        }
         update ld;
        }
    }


}