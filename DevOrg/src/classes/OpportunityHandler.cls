public class OpportunityHandler{
 public static void ApplyDiscount(List<Opportunity> opplist){
   for(Opportunity opp: opplist){
     If (opp.type == 'New Customer')
        opp.amount = 0.9 * opp.amount;
  }
 }
 
 public static void StopDeleting(List<Opportunity> opplist){
    for(Opportunity opp: opplist){
        opp.adderror('You cannot delete this opportunity');
    }
 }
 
 public static void RestrictStatusChange(List<Opportunity> oldopp, List<Opportunity> newopp){
   for(Integer i=0; i<newopp.size();i++){
      if(oldopp[i].StageName == 'Closed Won' && oldopp[i].StageName<>newopp[i].StageName)
       newopp[i].StageName.adderror('You can not change the stage of a closed won opp.');
   }
   
  }
}