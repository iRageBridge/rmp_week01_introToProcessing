int circWidth = 100;
int circHeight = 100;
boolean grow = true;

void setup(){
  size(800,800);
  background (124);
}

void draw(){
  background(124);
  ellipse(width/2,height/2,circWidth,circHeight);
  
  if(((circWidth >= 100)&&(circWidth <= width)) && (grow == true)){
    circWidth += 10;
    circHeight +=10;
  }
  
  if(circWidth == width){
    grow = false;
  }
  
  if(grow == false){
    circWidth-=20;
    circHeight-=20;
    
    if(circWidth == 100){
      grow = true;
    }
  }
  
  if(mousePressed){
    fill
    (0);
  }
  else{
    fill(255);
  }
}