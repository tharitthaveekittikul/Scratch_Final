class TextBox{
  int x, y, boxWidth, boxHeight, textLimit;
  float currentValue, keyCounter, previousKeyCounter;
  String textValue = "";
  char keyInput, c;
  boolean keyReleased;
  
  TextBox(int x_, int y_, int boxWidth_,int boxHeight_, int textLimit_){
    x = x_;
    y = y_;
    boxWidth = boxWidth_;
    boxHeight = boxHeight_;
    textLimit = textLimit_;
  }
  
  void draw(){
    drawBox();
    drawText();
    getUserInput ();
  }
  
  void drawBox(){
    stroke(1);
    fill(205);
    rect(x,y,boxWidth,boxHeight);
  }
  
  void drawText(){
    textAlign(LEFT,CENTER);
    textSize(16);
    fill(0);
    text(textValue + getCursor(), x + 5, y + boxHeight/2);
  }
  
  void getUserInput(){
    if(hovering()){
      
      if(!keyPressed){
        keyReleased = true;
        keyCounter = 0;
        previousKeyCounter = 0;
      }
      if(keyPressed && c != key){
        keyCounter = millis();
        c = key;
        if(c == BACKSPACE){
          textValue = "";
        }
        else if (c >= ' '){
          textValue += str(c);
        }
        if(textValue.length() > textLimit){
          textValue = "";
        }
        previousKeyCounter = keyCounter;
        keyReleased = false;
      }
    }      
  }
  
  String getCursor(){
    return hovering() && (frameCount >> 4 & 1) == 0 ? "|" : "";
  }
  
  boolean hovering(){ //find mouse
    return mouseX >= x && mouseX <= x + boxWidth && mouseY >= y && mouseY <= y + boxHeight;
  }
  
  String getValue(){
    return textValue;
  }
  
  void setValue(String text){
    textValue = text;      
  }
}
