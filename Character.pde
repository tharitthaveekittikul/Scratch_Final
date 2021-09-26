class CharacterPicture{
  int x = 50; int y = height-250; int w = 150, h = 150;
  PImage img = loadImage("cat.png");
  
  void display(){
    fill(175);
    image(img,x,y,w,h);
    fill(0);
    textSize(16);
    text("x = " + x + " ,  y = " + y, x + 10,y - 10);
    contains();
    
  }
  
  void move(){
    x = x + 10;
  }
  
  void checkEdges(){
    if(x >= width){
      x = 0;
    }
  }
  
  void contains(){
    if(mousePressed){
      if(mouseX >= x-w && mouseX <= x + w && mouseY >= y-h && mouseY <= y + h){
        x = mouseX;
        y = mouseY;
        //return true;
      }
    }    
    //return false;
  }
}
