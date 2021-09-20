class Loop implements Command{
  int n;
  Command command;
  
  Loop(int n_, Command command_){
    n = n_;
    command = command_;
  }
  
  void show(){
    for(int i = 0; i < n ; i++){
      command.show();
    }
  }
  
  void display(){
    fill(random(100,255), random(100,255), random(100,255));
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
