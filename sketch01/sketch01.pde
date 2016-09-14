// Create a variables to store some values that I need. To create
// a variable we specify the data type, a name and an optional 
// value.
int rectWidth = 50;
int rectHeight = 50;
int rectX = 0;  // Stores the x coordinate of the rectangle
int rectY = 0;  // Stores the y coordinate of the rectangle
int xStep = 0;  // The number of 'steps' tp take in the x direction
int yStep = 0;  // The number of 'steps' tp take in the x direction
int speed = 5;  // Essentially the size of the steps
int lap = 0;   //Lap counter, incremented every time you pass top left corner

int rectColor = 0;

void setup() {
  size(800, 600);
  background(124);
}

void draw() {
  fill(rectColor, 0, 0);
  stroke(1);
  background(124);
  rect(rectX, rectY, rectWidth, rectHeight);
  
  if ((rectX == 0) && (rectY == 0))
  {
    xStep = 0;
    yStep = speed;
    
    if (lap > 0){
      rectWidth+=100;
      rectHeight+=100; 
    }
    lap++;
  }
  
  if ((rectX == (width-rectWidth)) && (rectY == 0))
  {
    xStep = -speed;
    yStep = 0;
  }
  
  if ((rectX == (width-rectWidth)) && (rectY == (height-rectHeight)))
  {
    xStep = 0;
    yStep = -speed;
  }
  
  if ((rectX == 0) && (rectY == (height-rectHeight)))
  {
    xStep = speed;
    yStep = 0;
  }
  
  if((rectWidth >= width) || (rectHeight >= height)){
    rectWidth = 50;
    rectHeight = 50;
  }
   
  rectX+=xStep;
  rectY+=yStep;
  
  rectColor = (rectColor+1)%255;
}