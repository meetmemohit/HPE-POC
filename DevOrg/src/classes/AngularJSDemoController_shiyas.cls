public with sharing class AngularJSDemoController_shiyas{ 
public List<Contact> lstacc { get; set; }
public String searchText { get; set; }

public AngularJSDemoController_shiyas(){
lstacc = [SELECT Id, Name,LastName,FirstName,Phone,Title FROM Contact limit 100];
}

 public PageReference doSearch() {
              String finalSrchTxt = searchText + '*';
              lstacc = (List<Contact>) [FIND :finalSrchTxt RETURNING Contact(Id, Name,LastName,FirstName,Phone,Title)][0];
             /* if(results != null && results.size() !=0 ){
                searchMsg = '';
              }else{
                searchMsg = 'There is no Relationship matching to \'' + searchText + '\'';
              }*/
              
                return null;                    
        } 
    
     //Subclass : Wrapper Class 
       public class Accountwrap 
       
       {
       
    //Static Variables 
       // public string id;
       // public string name;
        public string firstname;
        public string lastname;
        public string userid;
        public string role;
       // public string phone;
         
    //Wrapper  Class Controller
        Accountwrap() 
            {
            //Phone = '';
            }     
       }
       
    //Method to bring the list of Account and Serialize Wrapper Object as JSON
        public  static String getlstAccount() 
        {
        
            List < Accountwrap > lstwrap = new List < Accountwrap > ();
            List < Contact > lstacc = [SELECT Id, Name,LastName,FirstName,Phone,Title FROM Contact limit 100];
            for (Contact a: lstacc) 
            {
            
                Accountwrap awrap = new Accountwrap();
               // awrap.id = a.id;
               // awrap.name = a.name;
                awrap.firstname = a.firstname ;
                awrap.lastname = a.lastname;
               // awrap.userId = a.user_Id__c;
                awrap.role= a.title;
                lstwrap.add(awrap);
            }        
            return JSON.serialize(lstwrap);
        } 
}