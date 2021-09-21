class Condition implements Command{
  Operator operator;
  Command leftChild;
  Command rightChild;
  
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
    fill(230,0,0);
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
