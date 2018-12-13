public class ParksSOAPRESTCLass {
    
    public string country{get;set;}
   // public string parks{get;set;}
    Public List<string> parks{get;set;}
    public boolean showResult{get;set;}
    
    public ParksSOAPRESTCLass(){
        
        showResult = false;
    }
    
    public void Search(){
        
        //SOAP Call
      /*  parksServices.ParksImplPort ws = new parksServices.ParksImplPort();
        ws.endpoint_x = 'https://th-apex-soap-service.herokuapp.com/service/parks';
        parks = ws.byCountry(country);
        showResult = true;
        system.debug('Value in Parsks ####' +parks); */
        //
        //REST Call
        Http http = new Http();
        HttpRequest request= new HttpRequest();
        request.setEndpoint('https://th-apex-soap-service.herokuapp.com/service/parks');
        request.setMethod('POST');
        
        String requestbody = '<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/"'
                           + 'xmlns:park="http://parks.services/">'
                           + '<soapenv:Header /> '
                           + '<soapenv:Body> <park:byCountry> <arg0>India</arg0> </park:byCountry> </soapenv:Body>'
                           +'</soapenv:Envelope>';
        system.debug('@@@Request Body --> ' +requestbody);
        request.setBody(requestbody);
    
        HttpResponse response = http.send(request);
        
        system.debug('Value in Parsks @@@@' + response.getBody());
        
        
    }
     
}