class StartButton{
  int x ; int y; int w; int h;
  // StartButton(width-150,30,100,50);
  StartButton(int x_, int y_, int w_, int h_){
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
    text("Start",x+25,y+25);
    
  }
  
  void pressed(){
    if(mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h){
      println("Start"); 
    }
  }  
}
