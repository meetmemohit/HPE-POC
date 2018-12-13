trigger CandidateTrigger on Candidate__c (before insert) {

   Candidate__c[] employed = trigger.new;
   MyCandidateClass.AddCandidate(employed);
 
}