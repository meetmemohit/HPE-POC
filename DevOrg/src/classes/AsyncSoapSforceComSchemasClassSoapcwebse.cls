//Generated by wsdl2apex

public class AsyncSoapSforceComSchemasClassSoapcwebse {
    public class CreateAccountResponse_elementFuture extends System.WebServiceCalloutFuture {
        public String getValue() {
            soapSforceComSchemasClassSoapcwebse.CreateAccountResponse_element response = (soapSforceComSchemasClassSoapcwebse.CreateAccountResponse_element)System.WebServiceCallout.endInvoke(this);
            return response.result;
        }
    }
    public class AsyncSOAPCWebService1 {
        public String endpoint_x = 'https://ap4.salesforce.com/services/Soap/class/SOAPCWebService1';
        public Map<String,String> inputHttpHeaders_x;
        public String clientCertName_x;
        public Integer timeout_x;
        public soapSforceComSchemasClassSoapcwebse.SessionHeader_element SessionHeader;
        public soapSforceComSchemasClassSoapcwebse.CallOptions_element CallOptions;
        public soapSforceComSchemasClassSoapcwebse.DebuggingHeader_element DebuggingHeader;
        public soapSforceComSchemasClassSoapcwebse.DebuggingInfo_element DebuggingInfo;
        public soapSforceComSchemasClassSoapcwebse.AllowFieldTruncationHeader_element AllowFieldTruncationHeader;
        private String SessionHeader_hns = 'SessionHeader=http://soap.sforce.com/schemas/class/SOAPCWebService1';
        private String CallOptions_hns = 'CallOptions=http://soap.sforce.com/schemas/class/SOAPCWebService1';
        private String DebuggingHeader_hns = 'DebuggingHeader=http://soap.sforce.com/schemas/class/SOAPCWebService1';
        private String DebuggingInfo_hns = 'DebuggingInfo=http://soap.sforce.com/schemas/class/SOAPCWebService1';
        private String AllowFieldTruncationHeader_hns = 'AllowFieldTruncationHeader=http://soap.sforce.com/schemas/class/SOAPCWebService1';
        private String[] ns_map_type_info = new String[]{'http://soap.sforce.com/schemas/class/SOAPCWebService1', 'soapSforceComSchemasClassSoapcwebse'};
        public AsyncSoapSforceComSchemasClassSoapcwebse.CreateAccountResponse_elementFuture beginCreateAccount(System.Continuation continuation,String nam) {
            soapSforceComSchemasClassSoapcwebse.CreateAccount_element request_x = new soapSforceComSchemasClassSoapcwebse.CreateAccount_element();
            request_x.nam = nam;
            return (AsyncSoapSforceComSchemasClassSoapcwebse.CreateAccountResponse_elementFuture) System.WebServiceCallout.beginInvoke(
              this,
              request_x,
              AsyncSoapSforceComSchemasClassSoapcwebse.CreateAccountResponse_elementFuture.class,
              continuation,
              new String[]{endpoint_x,
              '',
              'http://soap.sforce.com/schemas/class/SOAPCWebService1',
              'CreateAccount',
              'http://soap.sforce.com/schemas/class/SOAPCWebService1',
              'CreateAccountResponse',
              'soapSforceComSchemasClassSoapcwebse.CreateAccountResponse_element'}
            );
        }
    }
}