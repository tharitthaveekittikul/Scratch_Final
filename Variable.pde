import java.util.HashMap;
import java.util.Map;

class Variable implements Command{
  Map variable;
  
  Variable(){
    variable = new HashMap<String, Object>();
  }
  
  void showResult(){
    
  }
  
  void display(){
    
  }
  
  void put(String name, Object value){
    variable.put(name,value);
  }
  
  Object getValue(String name){
    fill(0);
    textSize(20);
    text(name + " = " + variable.get(name),10,470);
    return variable.get(name);
  }
}
