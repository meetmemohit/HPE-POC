@RestResource(urlmapping='/accountservices/*')
global class AccountRestService {
    
    @httpget
    global static void getAccountInfo(){
        
        RestRequest req = RestContext.request;
        RestResponse res = RestContext.response;
        
        string acc = req.requestURI.substring(req.requestURI.lastIndexOf('/')+1);
        Account a = [Select id, name, rating, phone from Account where name=:acc LIMIT 1];
        
        res.responseBody = Blob.valueOf(JSON.serialize(a));
       // return a;
        
    }

}