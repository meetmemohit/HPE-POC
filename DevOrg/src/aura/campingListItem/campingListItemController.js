({
	packItem : function(component, event, helper) {
        var a = component.get("v.item");
        a.Packed__c = true;
        component.set("v.item", a);
        var btn = event.getSource().set("v.disabled",true);
       // component.set(bt.)
        
        
	}
})