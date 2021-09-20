int x = (800/2) - 100;
int y = 10;
int w = 200;
int h = 40;

void setup(){
  size(800,800);
  //-----------if-then-----------------
  //Operator op = new Operator(3,"<",4);
  //Output out = new Output("Hello");
  //Condition con2 = new Condition(op,out);
  //con2.show();
  //con2.display();
  //out.display();
  //println(con2.operator.ToString());
  
  //Variable var = new Variable();
  //-----------if-else and loop and if-then-----------------
  Operator op = new Operator(4,">",2);
  Operator op2 = new Operator(5,">",2);
  Output out = new Output("Right");
  Output out2 = new Output("Wrong!");
  Condition con2 = new Condition(op2,out);
  Loop loop = new Loop(2,con2);
  Condition con = new Condition(op,loop,out2);
  
  con.show();
  con.display();
  loop.display();
  con2.display();
  out.display();
  out2.display();
  
  //-----------loop-----------------
  //Output out = new Output("Hi");
  //Loop loop = new Loop(3,out);
  //loop.show();
  //loop.display();
  //out.display();
  
  //-----------if - else ------------
  //Operator op = new Operator(5,"=",5);
  //Output out = new Output("True");
  //Output out2 = new Output("False");
  //Condition con = new Condition(op,out,out2);
  //con.show();
  //con.display();
  //out.display();
  //out2.display();   
  
  //-----------nested if---------------
  //Operator op = new Operator(5,">",6);
  //Operator op2 = new Operator(3,"<",4);
  //Output out = new Output("True");
  //Output out2 = new Output("False");
  //Condition con2 = new Condition(op2,out);
  //Condition con = new Condition(op,con2,out2);
  
  //con.show();
  //con.display();
  //con2.display();
  //out.display();
  //out2.display();

}
