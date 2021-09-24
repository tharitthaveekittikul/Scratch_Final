class Button{
  int x ; int y; int w; int h;
  String name;
  // StartButton(width-150,30,100,50);
  Button(String name_,int x_, int y_, int w_, int h_){
    name = name_;
    x = x_;
    y = y_;
    w = w_;
    h = h_;
  }  
  
  void display(){
    fill(255);
    rect(x,y,w,h);
    fill(0);
    textAlign(CENTER);
    textSize(20);
    text(name,x+50,y+20);
    
  }
  
  boolean pressed(){
    if(name == "Start"){
      if(mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h){
        println(name);
        return true;
      }
    }
    if(name == "Set"){
      if(mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h){
        println(name); 
        return true;
      }
    }
    return false;
  }  
}
