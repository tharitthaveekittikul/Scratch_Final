int x = (800/2) - 100;
int y = 10;
int w = 200;
int h = 40;

Button start;
Button set;

TextBox name;
TextBox value;


Character cat;

void setup(){
  size(800,800);
  
  //------------Button------------
  start = new Button("Start",width-150,30,100,50);
  set = new Button("Set",300,150,100,50);
  //------------TextBox--------------
  name = new TextBox(10,150,120,50);
  value = new TextBox(120,150,170,50);

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
  name.draw();
  value.draw();
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
