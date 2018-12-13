public class StringArrayTest {
    
   // public Integer arrsize{get;set;}
  //  public List<String> str{get;set;}
  //  public Integer Arrsize = 3;

/*    public void StringArrayTest(){
        generateStringArray(Arrsize);
    } */
    /*    
    public pagereference generate(){
         generateStringArray(arrsize);            
        }
    */
    public static List<String> generateStringArray(Integer size){
        //integer i = 0;
        List<String> str = new List<String>(); 
        for (integer i = 0; i < size; i++){
           
            Str.add('Test '+ i);
            
        }
        system.debug('Array value is @@@ ' + str);
        return Str;
        
    }
 }