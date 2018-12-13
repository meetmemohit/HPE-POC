({
	submit : function(component, event, helper) {
		var myname = component.get("v.name");
        var sla = component.get("v.sla");
        var serial = component.get("v.serial");
        console.log('Name Entered is:>>>', myname);
        console.log('SLA Entered is:>>>', sla);
        console.log('SLA Serial Entered is:>>>', serial);
        myname = component.find("acname").get("v.value");
        console.log('Name Entered is again:>>>', myname);
        
       
        
	}
})