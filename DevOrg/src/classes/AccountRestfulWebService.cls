@RestResource(urlmapping='/AccountRestful/*')
global class AccountRestfulWebService {
    @httpget
    global static void getAccountInformation(){
        RestRequest req = RestContext.request;
        RestResponse res = RestContext.response;
      //System.debug('Mohit@@@@ Body--> ' + blob.valueOf(string.valueOf(req.requestBody)));
        System.debug('Mohit@@@@ URI--> ' + req.requestURI);
        string acc = req.requestURI.substring(req.requestURI.lastIndexof('/') + 1);
      
       // Integer an = integer.valueOf(acc);
        system.debug('Mohit@@@ Account Id : -->' + acc);
        //List<Account> a = [Select id, name, AnnualRevenue, Rating from Account LIMIT :an];
        List<Account> a = [Select id, name, AnnualRevenue, Rating from Account where id=:acc LIMIT 1];
       // return a;
        res.responseBody = Blob.valueOf(JSON.serialize(a));
     }
}