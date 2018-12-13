({

	doInit : function(component, event, helper) {
        component.set("v.var1",'This is grandchild event');
        var event = component.getEvent("grandChildEvent");
        event.setParam("message","This is grandchild event");
        event.fire();
        		
	}
})