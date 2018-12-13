public class RESTCallExmp {
    
    public double num1{get;set;}
    public double num2{get;set;} 
    public double num3{get;set;}
    public string operation{get;set;}
    public string detail{get;set;}
    public string endpoint;
    public string message{get;set;}
    
    public void Calculate(){
        detail = 'The operation to be performed is ' + operation;
   		Http http = new Http();
		HttpRequest request = new HttpRequest();
		request.setEndpoint('https://th-apex-soap-service.herokuapp.com/service/calculator');
		request.setMethod('POST');
		string requestbody='<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" '+
                          +'xmlns:cal="http://calculator.services/">' +
                          +'<soapenv:Header/> <soapenv:Body>   <cal:doAdd>   <!--Optional:--> '+
         				  +'<arg0>10</arg0>   <!--Optional:-->   <arg1>20</arg1>  </cal:doAdd> </soapenv:Body> '+
							+'</soapenv:Envelope>   <soapenv:Header/>   <soapenv:Body></soapenv:Envelope>';
        request.setBody(requestbody); 
		HttpResponse response = http.send(request);
		// If the request is successful, parse the JSON response.
		System.debug('Response from REST Call #####Mohit --> ' + response.getBody());
		if (response.getStatusCode() == 200) {
    
} 
    }
}