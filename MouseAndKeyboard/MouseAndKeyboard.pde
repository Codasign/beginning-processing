
boolean drawShape;

void setup()
{
  size(600,600);
  
  drawShape = false;
}

void draw()
{
   background(100);
  
  if (drawShape == true)
  {
    ellipse(100,100,50,50);
  } 
}
  
  
void mousePressed()
{
   drawShape = !drawShape; 
}


void keyPressed()
{
   if (key == 65)
  {
     drawShape = true;
  } 
  if (key == 66)
  {
      drawShape = false;
  }
}
