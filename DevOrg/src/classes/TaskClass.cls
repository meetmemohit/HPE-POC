public class TaskClass {
    public Task tsk{get;set;}
    public String s{get;set;}
    public list<Task> tsklist{get;set;}
    public boolean showtask{get;set;}
    public Id id;
    public TaskClass(ApexPages.StandardController controller){
        tsk = (Task)Controller.getRecord();
        showtask = false;
       }    
    public void getTasks(){
        id = tsk.whatid;
        showtask = true;
        system.debug('Task Record is @@@@@' + id);
        tsklist = [select id, whatid, subject, status, Priority from Task where whatid=:id];
        system.debug('#####' + tsklist);
    
        
        
     }
}