class Operator{
  double number1 ;
  double number2 ;
  String operator;
  
  Operator(double number1_, String operator_, double number2_){
    number1 = number1_;
    number2 = number2_;
    operator = operator_;
  }
  
  boolean calculate(){
    if(operator == ">"){
      return number1 > number2;
    }
    else if(operator == "<"){
      return number1 < number2;
    }
    else if(operator == "="){
      return number1 == number2;
    }
    return false;
  }
  
  String ToString(){
    return number1 + " " + operator+ " " +number2;
  }
}
