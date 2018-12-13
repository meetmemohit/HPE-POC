public class ReturnAccountRecord{

   public List<Account> ReturnAccountRecord(){

   	List<Account> acclist =[Select Id, name from Account LIMIT 20];

   	return acclist;

}



}