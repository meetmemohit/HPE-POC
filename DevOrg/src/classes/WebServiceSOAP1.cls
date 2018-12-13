global class WebServiceSOAP1 {

    WebService static id  getAccountInfo(String fname){
    
     Account a = new Account();
     a.name = fname;
     insert a;        
     return a.id;
        
    } 
}