public with sharing class theController {

    public boolean sne { get; set; }
    public String searchText { get; set; }
    List<Lead> results;
    public List<Lead> getResults(){
        return Results;
    }
    public PageReference doSearch() {
        results = (List<Lead>)[FIND :searchText RETURNING Lead(Name, Email, Phone)][0];
      /*mail.setToAddresses(new String[] {email});
        mail.setReplyTo('noreply@suntrust.com');
        mail.setSenderDisplayName('No Reply');
        mail.setSubject('Relationship(s) transferred to you.');*/
        
        System.debug('###sne:::'+sne);
        If (sne != false){
          String replacedbody = 'Click here to open link';
          User usr = [select Id, Custom_link__c from User where Id = :UserInfo.getUserId()];
          EmailTemplate et=[Select id, body from EmailTemplate where name=:'Alert: PRA transferred'];
          String plainBody = et.body;
          Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
          mail.setTargetObjectId(usr.Id);
          mail.setSaveAsActivity(false);
          mail.setSenderDisplayName('No Reply');
          //String replacedbody = 'www.salesforce1.com' + '\n' + 'www.salesforce2.com';
          //new FluentHTML().div().a('http://www.google.co.uk','Search');
          String recordURLF = '<a href = "www.salesforce1.com">'+replacedbody+'</a>'; 
          //string replacedbody = '"href="www.salesforce.com"> openlinkhere </a>';
          //plainbody = usr.Custom_link__c;
          //update usr;
          plainBody = plainBody.replace('{!Custombody}',recordURLF );
          mail.sethtmlBody(plainbody);
          Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail });
      }
        return null;
        
    }
}