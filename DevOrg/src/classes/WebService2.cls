global class WebService2 {
    
    webservice Static Id CreateContact(String LastName){
        Contact c = new contact();
        c.LastName = LastName;
        Insert c;
        return c.id;
    }

}