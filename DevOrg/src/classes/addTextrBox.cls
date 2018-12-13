public class addTextrBox 
{

    public List<textBoxClass> listValueOfTextBox
        { 
          get; 
          set; 
        }    
    public addTextrBox ()
        {
            listvalueOfTextBox = new List<textBoxClass>();
        }
    public PageReference addTextBox() 
        {
            try
                {
                    listvalueOfTextBox.add(new textBoxClass('TextBox' + (listvalueOfTextBox.size() +  1)));
                }
            catch(Exception e)
                {
                    ApexPages.addMessages(e);
                }
            return ApexPages.currentPage();
        }

     public class textBoxClass
         {
             public string textBoxLabel{get;set;}
             public string textBoxValue{get;set;}
             
             public textBoxClass(String textBoxLabel)
                 {
                     this.textBoxLabel = textBoxLabel;
                 }
         }
}