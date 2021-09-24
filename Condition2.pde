//class Condition2 implements Command{
//  Operator operator;
//  Command leftChild;
//  Command rightChild;
//  // if-else
//  Condition2(Operator operator_, Command leftChild_, Command rightChild_){
//    operator = operator_;
//    leftChild = leftChild_;
//    rightChild = rightChild_;   
//  }

//  void showResult(){
//    if(operator.calculate()){
//      leftChild.showResult();
//      return;
//    }
//    if(!(operator.calculate())){
//      try{
//        rightChild.showResult();
//        return;
//      }
//      catch(NullPointerException e){
      
//      }      
//    }    
//  }
  
//  void display(){
//    fill(random(100,255), random(100,255), random(100,255));
//    stroke(1);
//    rect(x,y,w,h);
//    fill(0);
//    textSize(20);
//    text("if " + operator.ToString(),x+25,y+25);
//    fill(random(100,255), random(100,255), random(100,255));
//    stroke(1);
//    rect(x,y+40,w,h);
//    textSize(20);
//    text("else",x+25,y+40+25);
//    x = x + 25;
//    y = y + h;
    
//    //println(y);
//  }

//}
