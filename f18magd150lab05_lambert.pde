float a = 300;
float b = 220;
float c = 100;
float d = 100;
color circleColor = color(255);
color circleHighlight = color(204);
int circleX = 150;
int circleY = 175;
boolean circleOver = false;
int circleSize = 93;
void setup(){
  size(900,600);
  PImage img;
  img = loadImage("HD-LED-LCD.jpg");
  background(img);
  circleX = width/2+circleSize/2+10;
  circleY = height/2;
}
void draw()
{
  update(mouseX, mouseY);
  //TV screen
  rect(a,b,c,d);
  ellipse(circleX, circleY, circleSize, circleSize);
  fill(0);
  if(circleOver)
    {
      stroke(5);
      fill(100);
    }
  if(mousePressed)
  {
    if(mouseX>a && mouseX <a+c && mouseY>b && mouseY <b+d)
    {
      println("I am confused on so many levels.");
      println("CRZH VLR YFQZE");
      fill(255);
      rect(a,b,c,d);
    }
    else
    {
      if(circleOver == true)
      {
        fill(circleHighlight);
        ellipse(circleX, circleY, circleSize, circleSize);
      }
    }
  }

  /*
  if (circleOver) {
    fill(circleHighlight);
  } else {
  fill(circleColor);
  }
  */
 
}

boolean overCircle(int x, int y, int diameter) {
  float disX = x - mouseX;
  float disY = y - mouseY;
  if (sqrt(sq(disX) + sq(disY)) < diameter/2 ) {
    return true;
  } else {
    return false;
  }
}

void update(int x, int y) {
  if ( overCircle(circleX, circleY, circleSize) ) {
    circleOver = true; }
    else {
      circleOver = false; }
}
