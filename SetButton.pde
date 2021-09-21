class SetButton{
  int x ; int y; int w; int h;
  // SetButton(300,150,100,50); 
  SetButton(int x_, int y_, int w_, int h_){
    x = x_;
    y = y_;
    w = w_;
    h = h_;
  }  
  
  void display(){
    fill(175);
    rect(x,y,w,h);
    fill(0);
    textSize(20);
    text("Set",x+25,y+25);
    
  }
  
  void pressed(){
    if(mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h){
      println("Set"); 
    }
  }  
}
