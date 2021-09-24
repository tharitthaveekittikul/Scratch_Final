class Loop implements Command{
  int n;
  int x = 10, y = 150, w = 200, h = 50;
  TextBox repeat;
  Command command;
  
  Loop(int n_, Command command_){
    n = n_;
    command = command_;
    repeat = new TextBox(x+120,y+12,50,30,5);
  }
  
  void showResult(){
    for(int i = 0; i < n ; i++){
      command.showResult();
    }
  }
  
  void display(){
    fill(155,155,155);
    stroke(1);
    rect(x,y,w,h);
    fill(0);
    textSize(20);
    text("Repeat = " ,x+25,y+25);
    repeat.draw();
    
    //x = x + 25;
    //y = y + h;
    //println(y);
  }
}
