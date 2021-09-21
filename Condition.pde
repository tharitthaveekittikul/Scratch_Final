class Condition implements Command{
  Operator operator;
  Command leftChild;
  Command rightChild;
  
  // if-else
  Condition(Operator operator_, Command leftChild_, Command rightChild_){
    operator = operator_;
    leftChild = leftChild_;
    rightChild = rightChild_;
    
  }
  // if
  Condition(Operator operator_, Command leftChild_){
    operator = operator_;
    leftChild = leftChild_;
  }

  void show(){
    if(operator.calculate()){
      leftChild.show();
      return;
    }
    if(!(operator.calculate())){
      try{
        rightChild.show();
        return;
      }
      catch(NullPointerException e){
      
      }      
    }    
  }
  
  void display(){
    fill(random(100,255), random(100,255), random(100,255));
    stroke(1);
    rect(x,y,w,h);
    fill(0);
    textSize(20);
    text("if " + operator.ToString(),x+25,y+25);
    x = x + 25;
    y = y + h;
    //println(y);
  }
  
  //int position(){
  //  return int x, int y, int w, int h;
  //}
}
