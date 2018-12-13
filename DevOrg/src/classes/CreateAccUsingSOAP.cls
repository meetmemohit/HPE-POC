public class CreateAccUsingSOAP {
    
    public string nam{get;set;}
    public string Id;    
    public CreateAccUsingSOAP(ApexPages.StandardController ctr){
        
    }
    
    public void create(){
        partnerSoapSforceCom.Soap ps = new partnerSoapSforceCom.Soap();
        ps.endpoint_x = 'https://login.salesforce.com/services/Soap/u/39.0';
       // ps.inputHttpHeaders_x = new Map<string,String>();  
        string username = 'crazyap13@gmail.com';
        string password = 'mohit1308jImLQX11hnhz3mGH21SXoDOdK';
        partnerSoapSforceCom.LoginResult response = new partnerSoapSforceCom.LoginResult();
        response = ps.login(username, password);
        system.debug('##### -->' + response.sessionid); 
        
        soapSforceComSchemasClassSoapcwebse.SOAPCWebService1 ws = new soapSforceComSchemasClassSoapcwebse.SOAPCWebService1();
        soapSforceComSchemasClassSoapcwebse.SessionHeader_element sheader = new soapSforceComSchemasClassSoapcwebse.SessionHeader_element();
        sheader.sessionId = response.sessionid;
        ws.sessionheader = sheader;
        ws.clientCertName_x = 'webcertificate';
       // system.debug('@@@@@' + sheader);
        ws.inputHttpHeaders_x = new Map<string,String>();  
        ws.endpoint_x = 'https://ap4.salesforce.com/services/Soap/class/SOAPCWebService1';
       // string username = 'crazyap13@gmail.com';
       // string password = 'mohit1308'; 
        //Blob headerValue = Blob.valueOf(userName+':'+password); 
        //String authorizationHeader = 'Basic ' + EncodingUtil.base64Encode(headerValue);
        //authorizationHeader += ' ' + '00D28000000HWqu!AQoAQC3Sdn5kWMhBRjvjgm.jzKdxajWInZV.ktDJE51LtmlNSgqC7dvTR_bc3yrf0hpXXIXGFDjvbpUI_iaRRBaGFtIVpszJ';
      //  ws.inputHttpHeaders_x.put('Authorization', authorizationHeader);
        Id = ws.CreateAccount(nam);
        system.debug('Id of Account Inserted@@@@ -->' + Id); 
        
        
        
        
    }

}