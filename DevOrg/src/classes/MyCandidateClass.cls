public class MyCandidateClass {
public static void AddCandidate(Candidate__c[] emp){
  for(Candidate__c b:emp){
     b.Currently_Employed__c = true; 
  }
 }
}