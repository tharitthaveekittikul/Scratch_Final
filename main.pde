import java.util.Map;
import java.util.ArrayList;
import java.util.List;
import java.util.Iterator;

Button start;
Button set;

TextBox name;
TextBox value;

Condition con;
Loop loop;
CharacterPicture cat;
Motion move;
ArrayList<Motion> moves;
Iterator<Motion> it;
List<Command> commands;

Variable variables = new Variable();

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
  move = new Motion("Move",10,210);
  moves = new ArrayList<Motion>();

  con = new Condition(new Operator(4,">",2),new Output("True"));
  loop = new Loop(2,new Output("Hi"));
  commands = new ArrayList();
  

  //variables.put("x",50);
  //variables.put("y",20.0);
  //variables.put("z","PMO");

  //commands.add(new Condition(new Operator((double)((Integer) variables.getValue("x")), ">",(double) ((float)variables.getValue("y"))),new Output(variables.getValue("z").toString())));

  //commands.add(new Output(variables.getValue("x").toString()));

  //for (Command command: commands) {
  //  command.showResult();
  //}
}
void draw(){
  background(175);
  line(0,790,width,790); // floor
  line(0,550,width,550);
  line(width/2,0,width/2,550);
  textShow();
  start.display();
  set.display();
  name.draw();
  value.draw();
  con.display();
  loop.display();
  move.display();
  //it = moves.iterator();
  //while(it.hasNext()){
  //  Motion m = it.next();
  //  commands.add(m);
  //  m.display();
  //  m.drag();
  //}
  
  for(int i = 0; i < commands.size(); i++){
    moves.get(i).display();
    moves.get(i).drag();
  }
  
  if(mousePressed){
    if(set.pressed()){
      if(name.getValue() != "" && value.getValue() != ""){
        variables.put(name.getValue(),value.getValue());
        print(variables.getValue(name.getValue()));
        name.setValue("");
        value.setValue("");     
      }
    }    
  }
  variables.getValue(name.getValue());
  showCoordinates();
  runCat();
  
  
}

void mouseClicked(){

  if(start.pressed()){
    println("use this start");
    for (Command command: commands) {
      command.showResult();
    }
  }

  if(move.contains()){
    moves.add(new Motion("Move",660,120));
    commands.add(moves.get(moves.size() - 1));
    
  }
  
  
  con.contains();
  loop.contains();
  
}

void runCat(){
  cat.display();
  cat.checkEdges();
  //cat.setMove();
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
