({
	displayMessage : function(component, event, helper) {
        
        var btnname = event.getSource();
        var btnmsg = btnname.get("v.label");
        
        component.set("v.message", btnmsg);
       // var btnhide = btnname.get("v.disabled");
        var btnhide = true;
        component.set("v.hide",btnhide);
		
	}
})