public class ActionFunctionController {
    public string Leadname{get;set;}
    public ActionFunctionController(){}
        public pagereference InsertLead(){
            system.debug('#### I am here');
            Lead l = new Lead();
            l.LastName = leadname;
            l.company = 'IBM India Pvt Ltd';
            l.Status = 'Open';
            insert l;
            return null;
        }        
}