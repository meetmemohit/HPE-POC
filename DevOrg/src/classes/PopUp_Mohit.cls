public class PopUp_Mohit {     

    public boolean displayPopup {get; set;}     
    public boolean showButton {get;set;}
    
    public void PopUp_Mohit(){
        showButton = false;
    }
    public void closePopup() {        
        displayPopup = false; 
        showButton = true;
    }     
    public void showPopup() {        
        displayPopup = true;    
    }
    
  }