public class AnimalLocator {
   public static String getAnimalNameById(Integer id) {
       
       Http http = new Http();
       HttpRequest request = new HttpRequest();
       request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals/'+id);
       request.setMethod('GET');
       request.setHeader('Content-Type', 'application/json;charset=UTF-8');
       
       
       HttpResponse response = http.send(request);
       Map<String, Object> animals ;
       String returnValue;
       
       // parse the JSON response
       if (response.getStatusCode() == 200) {
           Map<String, Object> result = (Map<String, Object>) JSON.deserializeUntyped(response.getBody());
           system.debug('result>>>'+result);
           animals = (Map<String, Object>) result.get('animal');
           System.debug(animals);
       }
       
       if (animals.size() > 0 && animals != NULL) {
           returnValue =string.valueOf(animals.get('name'));
           system.debug('returnValue>>'+returnValue);
       }
       return returnValue;
   }
   
}