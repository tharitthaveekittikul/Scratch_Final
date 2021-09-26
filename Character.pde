class CharacterPicture{
  int x,y;
  int w = 150, h = 150;
  PImage img;
  
  CharacterPicture(){
    img = loadImage("cat.png");
    x = 50;
    y = height-250;
  }
  
  void display(){
    fill(175);
    image(img,x,y,w,h);
    fill(0);
    textSize(16);
    text("x = " + x + " ,  y = " + y, x + 10,y - 10);
    contains();
    
  }
  
  void setMove(){
    x = x + 10;
  }
  
  void checkEdges(){
    if(x >= width){
      x = 0;
    }
  }
  
  boolean contains(){
    if(mousePressed){
      if(mouseX >= x-w && mouseX <= x + w && mouseY >= y-h && mouseY <= y + h){
        x = mouseX;
        y = mouseY;
        return true;
      }
    }    
    return false;
  }
  
  
}
