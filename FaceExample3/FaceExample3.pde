Face face1;


void setup()
{
  size(800, 600);

  face1 = new Face(200, 200, 300, 300);
}

void draw()
{
  background(100,100,100);
  
  face1.drawFace();
}

void keyPressed()
{
   if (key == 'S')
  {
    face1.moveRight();
  }
  
  if (key == 'A')
  {
     face1.moveLeft(); 
  } 
}

