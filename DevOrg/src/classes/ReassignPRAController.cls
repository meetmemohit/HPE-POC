public class ReassignPRAController{
    
    public string urlparm{get;set;}
    public string returl{get;set;}
    private string RelationshipId{get;set;}
    public List<String> rellist = new List<String>(); 
    private Relationship__c RelationshipOwnerId{get;set;}
    Id RelationshipOwner;
    Pagereference pageref;
    
        public ReassignPRAController(ApexPages.StandardController controller){
                    
        	Map<String, String> UrlParameterMap = ApexPages.currentPage().getParameters();
        	System.Debug('UrlParameterMap:'+UrlParameterMap.get('urlparm'));
        	System.Debug('retURL:'+UrlParameterMap.get('retURL'));  
        	RelationshipId = UrlParameterMap.get('urlparm');
            System.Debug('Values in Map:'+ RelationshipId);
            
            
            for(string str: RelationshipId.split(',')){
                
                rellist.add(str);
            }
            System.Debug('Values in String List:'+ rellist);
            RelationshipOwnerId = (Relationship__c)controller.getRecord();
            //System.Debug('Values of new Owner:'+ RelationshipOwnerId);
            
            List<Relationship__c> rel = [Select id, Name from Relationship__c where Id in :rellist];
            
        }
    
    public PageReference Save(){
        
        RelationshipOwner = RelationshipOwnerId.OwnerId;
        System.Debug('Values of new Owner:'+ RelationshipOwner);
        List<Relationship__c> listRelationship = [Select id, Name, OwnerId,
                                                 (Select Id, OwnerId from Opportunities__r),
                                                 (Select Id, OwnerId from Cases__r)
                                                  from Relationship__c where Id IN :rellist];
        
        return pageref;
    }

}