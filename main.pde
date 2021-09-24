Button start;
Button set;

TextBox name;
TextBox value;

Condition con;
Loop loop;
CharacterPicture cat;

void setup(){
  size(1000,900);
  
  //------------Button------------
  start = new Button("Start",width-150,30,100,30);
  set = new Button("Set",300,50,100,30);
  
  //------------TextBox--------------
  name = new TextBox(10,50,130,30,10);  // x,y,w,h,textLimits
  value = new TextBox(160,50,130,30,10);

  //------------Character---------------
  cat = new CharacterPicture();
  //Variable var = new Variable();
  
  //-----------if-else and loop and if-then-----------------
  //Operator op = new Operator(4,">",2);
  //Operator op2 = new Operator(5,">",2);
  //Output out = new Output("Right");
  //Condition con2 = new Condition(op2,out);
  //Loop loop = new Loop(2,con2);
  //Condition con = new Condition(op,loop);
  
  //con.showResult();
  //con.display();
  //loop.display();
  //con2.display();
  //out.display(); 
  
  con = new Condition(new Operator(4,">",2),new Output("True"));
  loop = new Loop(2,new Output("Hi"));
}
void draw(){
  background(175);
  textShow();
  start.display();
  set.display();
  name.draw();
  value.draw();
  con.display();
  loop.display();
  showCoordinates();
  runCat();
}

void mouseClicked(){   
  if(start.pressed()){
    cat.move();
  }
  set.pressed();
}

void runCat(){
  cat.display();
  cat.checkEdges();
  //cat.move();
}

void textShow(){
  fill(0);
  textSize(25);
  text("Set Variable",100,20);
  fill(0);
  textSize(20);
  text("=",143,60);
}

void showCoordinates(){
  fill(0);
  textSize(16);
  text("x: " + mouseX + "   y = " + mouseY,width/2 - 80,height - 50);
}
