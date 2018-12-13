@isTest
private class LeadProcessorTest {
    
   @testSetup
    static void setup(){
        
       List<Lead> testLead = new List<Lead>();
       
        for(Integer i=0; i<200; i++){
            Lead l = new Lead();
            l.FirstName = 'Mohit';
            l.LastName = 'Lead'+i;
            l.Company = 'Test';
            l.Status = 'Open';
            testLead.add(l);            
        } 
        
        insert testLead;
        
    }
    static testmethod void test(){
        
        Test.startTest();
        LeadProcessor leadBatch = new LeadProcessor();
        Id batchid = Database.executeBatch(leadBatch);
        test.stopTest();
    }

}