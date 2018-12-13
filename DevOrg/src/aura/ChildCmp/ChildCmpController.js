({
	doInit : function(component, event, helper) {
        component.set("v.var1",'This is child event');
        var event = component.getEvent("childEvent");
        event.setParam("message","Param is set in Child");
        event.fire();
        		
	},
    
    DisplayEvent : function(component, event, helper) {
        console.log(">>>11111",event.getSource().getLocalId());
        var event = component.getEvent("childEvent");
        event.setParam("message","Param is set in Child");
       
        event.fire();
        		
        		
	},
    handleChildEvent : function(component, event, helper) {
         var msg = event.getParam("message");
        component.set("v.var1",msg);
        console.log("Grand Child Event", msg);
      
        		
	}
})