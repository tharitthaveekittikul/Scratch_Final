class Motion implements Command {
  String name;
  int x , y ,w = 120 ,h = 50;
  CharacterPicture cp;
  //int x = 10, y = 210, w = 120, h = 50;
  Motion(String name_,int x_, int y_){
    cp = new CharacterPicture();
    name = name_;
    x = x_;
    y = y_;

    
  }
  
  void display(){
    fill(155,155,155);
    stroke(1);
    rect(x,y,w,h);
    fill(0);
    textSize(20);
    text(name + " = 10" ,x+10,y+25);
  }
  
  boolean contains(){
    if(mouseX >= x && mouseX <= x + w && mouseY >= y && mouseY <= y + h){
      //println("in Motion");
      return true;
    }
    return false;
  }
  
  void drag(){
    if(mousePressed){
      if(mouseX >= x && mouseX <= x + w && mouseY >= y && mouseY <= y + h){
        x = x + (mouseX - pmouseX);
        y = y + (mouseY - pmouseY);
        //return true;
      }
    }  
  }
  void showResult(){
    println("join");
    cp.setMove();
    println(cp.x,cp.y);
  }
}
