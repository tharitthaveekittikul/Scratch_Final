int x = (800/2) - 100;
int y = 10;
int w = 200;
int h = 40;

StartButton start;
SetButton set;

Character cat;

void setup(){
  size(800,800);
  
  //------------Start Button------------
  start = new StartButton(width-150,30,100,50);
  
  //------------Set Button--------------
  set = new SetButton(300,150,100,50);

  //------------Character---------------
  cat = new Character();
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
  
  
}
void draw(){
  background(175);
  start.display();
  set.display();
  runCat();
  
  
}

void mouseClicked(){    
  start.pressed();
  set.pressed();
}

void runCat(){
  cat.display();
  cat.checkEdges();
  //cat.move();
}
