public class ReassignOpportunityController {

    //public Opportunity opp{get;set;}
    //public List<Opportunity> opp{get;set;}
    //public List<boolean> selrec{get;set;}
    //public List<boolean> selrec{get;set;}
    public boolean selrec{get;set;}
    public integer selcount = 0;
    public String records = '';
    public String urlparm;
    public List<OppWrapper> opplist{get;set;} 
    //public ReassignOpportunityController(ApexPages.StandardController controller){
    public ReassignOpportunityController(){
        User usr = new User();
        this.opplist = new List<OppWrapper>();
        usr = [Select Id, Name from User where Id = :Userinfo.getUserId()];
        for(Opportunity opp:[Select Id, Name, OwnerId, Type from Opportunity where OwnerId=:usr.Id limit 5] ) {
            this.OppList.add(new OppWrapper(opp));
        }
    }
    
    public void DoReassign(){
        List<Opportunity> SelectedOpp = new List<Opportunity>();
        for (OppWrapper opsel : opplist){
            if(opsel.selrec == true){
                SelectedOpp.add(opsel.topp);
            }else{
                selcount++;
            }
        }
        for(Opportunity selop : SelectedOpp){
            //    system.debug('Selected opportunity --> ####' +selop.name);  
                records = records + selop.Id + '++';
                system.debug('Record added to --> ####' +records);
        }
        if (selcount == opplist.size()){
            ApexPages.addmessage(new ApexPages.message(ApexPages.severity.WARNING,'There are no records selected for reassignment.')); 
        }else{
          //  Pagereference pagref = new PageReference('/apex/ReassignSelectedOpportunity/?'+urlparm=records);
          system.debug('Records selected in string %%%%%% '+ records);
        }
         
    }
    
    public Pagereference Cancel(){
        PageReference pageref = new PageReference('/'+ System.CurrentPageReference().getParameters().get('id'));
        pageref.setRedirect(true);
        return pageref;
        
    }
    public class OppWrapper{
        public Opportunity topp{get;set;}
        public boolean selrec {get;set;}
        
        public OppWrapper(Opportunity o){
            this.topp = o;
            this.selrec = false;
        }
    }
    
    
}