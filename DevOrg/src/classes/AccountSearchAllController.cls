public class AccountSearchAllController {
    public Account acc {get; set;}
    public Date StartDate{get;set;}
    public Date EndDate{get;set;}
    public List<Account> srchtasks{get;set;}
    public List<Task> tsk{get;set;}
    public List<Event> evnt{get;set;}
    public String activitytype{get;set;}
    public String query;
    public String obj;
    public String acttype{get;set;}
    public String citynames{get;set;}
    public String acttyp{get;set;}
    public boolean Istask{get;set;}
    public boolean IsEvent{get;set;}
    public string userid{get;set;}
    public string acc_name{get;set;}
    public String case_num{get;set;}
    //public Date startdt{get;set;}
    //public Date enddt{get;set;}
    
    public AccountSearchAllController(){
      //  acc = [Select id, name, userId__c, Type_Of_Activity__c from Account where id = :ApexPages.currentPage().getParameters().get('id')];
      //  acc.id =  
        acc_name = ApexPages.currentPage().getParameters().get('acc_name');
        case_num = ApexPages.currentPage().getParameters().get('case_num');
        Istask = false;
        IsEvent = false;
    }
   
    public void DoSearch(){
        system.debug('Account Id is ****1 -->' + acc.Id);
        system.debug('Account Name is ****1 -->' + acc.Name);
        system.debug('Type of activity is **** -->' + acttyp);
        system.debug('Type of activity is **** -->' + startdate);
        system.debug('Type of activity is **** -->' + enddate);
        system.debug('Assigned to  is **** -->' + acc.UserId__c);
        system.debug('Assigned to  is **** -->' + userid); 
        if (acttyp == 'Task'){
            Istask = true;
            getTask(acttype, acc.UserId__c, startdate, enddate);   
        }Else if (acttyp == 'Call'){
            Isevent = true;
            getEvent(acttype, acc.UserId__c, startdate, enddate); 
        }Else if(acttyp == 'Task and Call'){
            Istask = true;
            Isevent = true;
            getTask(acttype, acc.UserId__c, startdate, enddate);
            getEvent(acttype, acc.UserId__c, startdate, enddate);  
        }       
    /*    query = 'Select WhoId, ActivityDate,Subject, Status, Priority from Task where ';
        if (String.isNotBlank(activitytype)){
            query = query + 'Type_Of_Activity__c = :activitytype AND ';
        }
        query = query + '(ActivityDate >= :StartDate) AND (ActivityDate <= :EndDate) ALL ROWS' ;
        System.debug('The formed query for Task @@@-->' + query);
        tsk = Database.query(query);
        query = 'Select WhoId, ActivityDate,Subject from Event where ';
        if (String.isNotBlank(activitytype)){
            query = query + 'Type_Of_Activity__c = :activitytype AND ';
        }
        query = query + '(ActivityDate >= :StartDate) AND (ActivityDate <= :EndDate) ALL ROWS' ;
        System.debug('The formed query for event is %%%% -->' + query);
        evnt = Database.query(query); */
        
    }
    public List<Sobject> getResults(){
        return tsk;
        return evnt;
              
    }
    
    public PageReference Cancel(){
         PageReference pageref = new PageReference('/' + System.currentPageReference().getParameters().get('id'));
         pageRef.setRedirect(true);
	         return pageref;
    }
    public void getTask(String act, Id usrid, Date stdt, Date enddt){
        query = 'Select WhoId, ActivityDate,Subject, Status, Priority from Task where ';
        query = query + '(ActivityDate >= :stdt) AND (ActivityDate <= :Enddt) ALL ROWS' ;
        tsk = Database.query(query);
       
    }
    public void getEvent(String act, Id usrid, Date stdt, Date enddt){
        query = 'Select WhoId, ActivityDate,Subject from Event where ';
        query = query + '(ActivityDate >= :StartDate) AND (ActivityDate <= :EndDate) ALL ROWS' ;
        evnt = Database.query(query);
       
    }
    
}