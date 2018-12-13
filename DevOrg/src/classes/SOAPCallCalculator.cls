public class SOAPCallCalculator {
    
    public double num1{get;set;}
    public double num2{get;set;} 
    public double num3{get;set;}
    public string operation{get;set;}
    public string detail{get;set;}
    public string endpoint;
    public string message{get;set;}
    
    public void Calculate(){
        detail = 'The operation to be performed is ' + operation;
     /*   Calculator_Setting__c customURL = Calculator_Setting__c.getValues('Calculator Link');
        endpoint = customURL.value__c; */
        //creating an instance for SOAP Call
        calculatorServices.CalculatorImplPort ws = new calculatorServices.CalculatorImplPort();
        //populating Data to make a call
     /*   ws.endpoint_x =  'https://th-apex-soap-service.herokuapp.com/service/calculator';
        ws.inputHttpHeaders_x = new Map<String, String>();
        ws.timeout_x = 120000; */
        //Make a call to perform operation
        If(num1 == 0 || num2 == 0){
            ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.ERROR,'Number1 and Number2 Field are Mandatory'));
        }
        num3 = ws.doMultiply(num1, num2);
    }
}