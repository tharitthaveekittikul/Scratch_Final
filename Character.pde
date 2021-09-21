class Character{
  int x = 50; int y = height-250;
  PImage img = loadImage("cat.png");
  
  void display(){
    fill(175);
    image(img,x,y,150,150);
  }
  
  void move(){
    x = x + 10;
  }
  
  void checkEdges(){
    if(x >= width){
      x = 0;
    }
  }
}
