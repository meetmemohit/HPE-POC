trigger AutoOpp on Account(after insert) {
  List<Candidate__c> newcan = new List<Candidate__c>();
  for (Account acc : Trigger.new) {
    Candidate__c can = new Candidate__c();
   // can.Name        = 'Pramod Pandey';
    can.City__c   = 'Pune';
    can.Country__c   = 'India';
    newcan.add(can);
  }
  insert newcan;
  }