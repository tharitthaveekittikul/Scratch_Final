class Condition implements Command{
  Operator operator;
  Command leftChild;
  Command rightChild;
  int x = 20, y = 90, w = 300, h = 50;
  TextBox name;
  TextBox op;
  TextBox value;
  
  // if-else
  //Condition(Operator operator_, Command leftChild_, Command rightChild_){
  //  operator = operator_;
  //  leftChild = leftChild_;
  //  rightChild = rightChild_;
    
  //}
  // if
  Condition(Operator operator_, Command leftChild_){
    operator = operator_;
    leftChild = leftChild_;
    name = new TextBox(x+30,y+10,110,30,10);   // x,y,w,h,textLimits
    op = new TextBox(x+145,y+10,35,30,3);
    value = new TextBox(x+185,y+10,110,30,10);
  }

  void showResult(){
    if(operator.calculate()){
      leftChild.showResult();
      return;
    }
    if(!(operator.calculate())){
      try{
        rightChild.showResult();
        return;
      }
      catch(NullPointerException e){
      
      }      
    }    
  }
  
  void display(){
    //fill(230,0,0);
    //stroke(1);
    //rect(x,y,w,h);
    //fill(0);
    //textSize(20);
    //text("if " + operator.ToString(),x+25,y+25);
    //x = x + 25;
    //y = y + h;
    //println(y);
    //---------------------------------
    fill(155,155,155);
    stroke(1);
    rect(x,y,w,h);
    fill(0);
    textSize(20);
    text("if ",x+10,y+25);
    
    name.draw();
    op.draw();
    value.draw();
    
  }
  
  //int position(){
  //  return int x, int y, int w, int h;
  //}
}
