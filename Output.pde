class Output implements Command{
  String message;
  
  
  Output(String message_){
    message = message_;
  }
  
  void showResult(){
    println(message);
  }
  
  void display(){
    fill(0,200,200);
    stroke(1);
    rect(x,y,w,h);
    fill(0);
    textSize(20);
    text("Say: "+ message,x+25,y+25);
    y = y + h;
    x = (800/2) - 100;
    //println(y);
    
  }
}
