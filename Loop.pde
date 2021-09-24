class Loop implements Command{
  int n;
  int x,y,w,h;
  Command command;
  
  Loop(int n_, Command command_){
    n = n_;
    command = command_;
  }
  
  void showResult(){
    for(int i = 0; i < n ; i++){
      command.showResult();
    }
  }
  
  void display(){
    fill(0,200,0);
    stroke(1);
    rect(x,y,w,h);
    fill(0);
    textSize(20);
    text("Repeat n = " + n ,x+25,y+25);
    x = x + 25;
    y = y + h;
    //println(y);
  }
}
