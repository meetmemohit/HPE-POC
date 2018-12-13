trigger MyFirstUserTrigger on User (before Update) {
  // List<>User usr = new List<User>();
   if (Trigger.isBefore) {
     /*   System.debug('********Trigger values***********');
        System.debug('***SFDC: Trigger.old is: ' + Trigger.old);
        System.debug('***SFDC: Username is: ' + usr.FirstName);
        System.debug('***SFDC: Trigger.new is: ' + Trigger.new);*/
        
        for(User usr : trigger.new){
          System.debug('***SFDC: FirstName: '+Trigger.oldMap.get(usr.Id).FirstName);
          
        }  
      }
     }