int circleX = 200;
int circleY = 200;
int direction = 1;

void setup()
{
  size(600,600);

  background(255,0,255);

}

void draw()
{
  background(255,255,0);
  fill(255,0,0);

  ellipse(circleX,circleY,100,100);
  circleX = circleX+direction;
  
  if (circleX > width)
  {
     direction = -1; 
  }
  
  if (circleX < 0)
  {
     direction = 1; 
  }
}
