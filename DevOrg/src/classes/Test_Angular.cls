public class Test_Angular {
    public String fname{get;set;}
    Public Contact con{get;set;}
    Public Contact cont{get;set;}
    public Test_Angular(){
    //    userid = Userinfo.getUserId();
        con = [Select Id, Name,LastName,FirstName,Title, User_ID__c, User_Status__c,Email,Phone from Contact Limit 1 ];    
        system.debug('firsname*****'+ fname);
     //  system.debug('User id*****'+ con.Lastname);
     //  system.debug('User id*****'+ con.Firstname);
     //  system.debug('User id*****'+ con.user_id__c);
       
    }
    public void saveprofile(){  
     // String para = Apexpages.currentPage().getParameters().get('fname');
      system.debug('######I am in saveprofile#####' + fname);
    }

}