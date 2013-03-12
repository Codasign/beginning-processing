

void setup()
{
  size(800, 600);

  smooth();
}

void draw()
{
  face(400, 200,200,200);
  
  face(100, 100,50,50);
}


void face(float x, float y,float faceWidth,float faceHeight)
{
  smooth();
  noStroke();

  // rectangle for the head
  fill(0, 0, 100);
  rect(x, y, faceWidth, faceHeight);

  // left eye
  fill(255);
  ellipse(x+(faceWidth/3), y+(faceHeight/3), faceWidth/10, faceHeight/5);

  // right eye
  fill(255);
  ellipse(x+(2*faceWidth/3), y+(faceHeight/3), faceWidth/10, faceHeight/5);

  fill(255, 0, 0);
  ellipse(x+(faceWidth/2), y+(2*faceHeight/3), faceWidth/2, faceHeight/10);
}

