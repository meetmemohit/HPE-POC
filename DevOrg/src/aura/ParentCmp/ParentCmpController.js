({
	fireEvent : function(component, event, helper) {
        var msg = event.getParam("message");
        component.set("v.var1",msg);
        console.log("Parent Event", msg);
        //console.log(">>>",event.getSource().getName());
		console.log(">>>2222",event.getSource().get("v.value"));
	}
})