public class CRM_SearchAllActivityController {

    // Variables Declaration
    public Event eventObject{get;set;}
    public boolean showTask{get;set;}
    public boolean showEvent{get;set;}
    public boolean excludeInvitee{get;set;}
    public String Accid{get;set;}
    public String Accname{get;set;}
    public String activityType{get;set;}
    public String query{get;set;}
    public String assignedTo{get;set;}
    public Date StartDate{get;set;}
    public Date EndDate{get;set;}
    Transient public List<Task> listTask{get;set;}
    Transient public List<Event> listEvent{get;set;}
    Set<Id> setUsersId;
    private integer counter=0;  
    private integer list_size=1000; 
    public boolean noTask{get;set;}
    public boolean noEvent{get;set;}
    public boolean noPrev{get;set;}
    public boolean showError{get;set;}
    
    // Constructor Initialization
    public CRM_SearchAllActivityController(){ 
        
        // Initialize Varaibles       
        eventObject = new Event();
        showTask = false;
        showEvent = false;
        noTask = false;
        noEvent = false;
        noPrev = True;
        counter = 0;
        showError = false;
        
        // Get Current page id from URL
        Accid = ApexPages.currentPage().getParameters().get('Id');
        Accname = ApexPages.currentPage().getParameters().get('name');
    }
    
    // Search Method 
    public void DoSearch(){
        
        // Initialize Varaibles
        listTask = new List<Task>();
        listEvent = new List<Event>();
        setUsersId = new Set<Id>();
        
        StartDate = eventObject.StartDateTime.Date();
        EndDate = eventObject.EndDateTime.Date();
        getUsers(assignedTo);
        if(String.isNotBlank(assignedTo) && (setUsersId.size() <= 0)){
            showTask = false;
            showEvent = false;
             ApexPages.addmessage(new ApexPages.message(ApexPages.severity.INFO,'Name entered in Assigned To field is either not Full name or does not exist in database.'));
        }else if(String.isBlank(assignedTo) && excludeInvitee == true){
            showTask = false;
            showEvent = false;
            ApexPages.addmessage(new ApexPages.message(ApexPages.severity.ERROR,'Exclude Invitees checkbox should be selected only if there is data in the Assigned to Field.'));
        }else{
        //Check if the end date is less than the start date
        system.debug('I am in query####');
        if (EndDate < StartDate){
            showTask = false;
            showEvent = false;
            ApexPages.addmessage(new ApexPages.message(ApexPages.severity.WARNING,'End Date cannot be earlier than the Start Date.'));
        }
        // Check if Type of Activity is 'Task'
        if (activityType == 'Task'){            
            showTask = true;
            showEvent = false;
            System.debug('task flag %%%%' + Showtask);
            System.debug('Event Flag %%%' + showevent);
            getTask(StartDate, EndDate); 
        }
        // Check if Type of Activity is 'Call'
        else if (activityType == 'Call'){
            showEvent = true;
            showTask = false;
            System.debug('task flag !!!!' + Showtask);
            System.debug('Event Flag!!!!' + showevent);
            getEvent(StartDate, EndDate); 
        }
        // Check if Type of Activity is both i.e. 'Task and Call'
        else if(activityType == 'Tasks and Calls'){
            
            // Invoke Method to query Data
            showTask = true;
            showEvent = true;
            System.debug('task flag @@@@' + Showtask);
            System.debug('Event Flag @@@@' + showevent);
            getTask(StartDate, EndDate);
            getEvent(StartDate, EndDate);  
        }  
       
        //Below logic is for enabling and disabling Next and Prev button
        system.debug('Heap Size Limit %%%%%%' +  Limits.getLimitHeapSize());  
        system.debug('Heap Size Limit %%%%%%' +  Limits.getHeapSize());
        If (counter <= 0){
            noPrev = true;
        }else{
            noPrev = false;
        }
        If (listTask.size() == 0){
            noTask = true;           
        }
        if(listEvent.size() == 0){
            noEvent = true;
        }
        if (listTask.size() < list_size && listEvent.size() <list_size){
            noTask = true;
            noEvent = true;
        }
            
        }   
        
    }
    
      
    // Method to get Set of Users on basis of Assigned To input on Page
    public void getUsers(String assignTo){
        if(String.isNotBlank(assignedTo)){
            for(User u: [SELECT Id, Name FROM User WHERE Name =:assignedTo]){
                setUsersId.add(u.Id);
            }
        }
    }
    
    // Method to Query data from Task object
    public void getTask(Date StartDate, Date EndDate){
        query = 'Select Subject,whoid, who.name, WhatId, OwnerId,What.name,Owner.Name, ActivityDate, Description, IsArchived, IsDeleted From Task where ';
        query = query + '(IsDeleted = false) AND (ActivityDate >=:StartDate) AND (ActivityDate <=:EndDate) ';  
        
        query = query + 'AND WhatId =:Accid ';
        if(setUsersId.size() > 0){
             query = query + 'AND OwnerId IN :setUsersId ';
        }  
        query = query + 'limit :list_size OFFSET :counter ';
        query = query + 'ALL ROWS';
        
        listTask = Database.query(query);  
    }
    
    // Method to Query data from Call object
    public void getEvent(Date StartDate, Date EndDate){        
        query = 'Select Subject, WhatId,whoid, who.name, OwnerId, What.name,Owner.name, ActivityDate, Description, IsArchived, IsDeleted From Event where ';
        query = query + '(IsDeleted = false) AND (ActivityDate >=:StartDate) AND (ActivityDate <=:EndDate) ';
        
        query = query + 'AND WhatId =:Accid ';
        if(setUsersId.size() > 0){
            if(excludeInvitee == false){
                query = query + 'AND OwnerId IN :setUsersId ';
            }
            else if(excludeInvitee == true){
                query = query + 'AND (OwnerId IN :setUsersId) AND (IsChild = false) ';
            }           
        }
        query = query + 'limit :list_size OFFSET :counter ';
        query = query + 'ALL ROWS ';
        
        listEvent = Database.query(query);
    }
    
     //For header of the excel file
    public String xlsHeader {
        get {
            String strHeader = '';
            strHeader += '<?xml version="1.0"?>';
            strHeader += '<?mso-application progid="Excel.Sheet"?>';
            return strHeader;
        }
    }
    
    //Method to export search results to excel
       public PageReference Export(){
        return new PageReference('/apex/SearchAllActivityExportExample');
     }
    
    public void NextPage(){
        counter += list_size;
        doSearch();
       // return null;
    }
    
    public void PreviousPage(){
        counter -= list_size;
        doSearch();
       // return null;
     
    }
}