

void setup()
{
  size(800, 600);

  smooth();
}

void draw()
{
  face();
}


void face()
{
  smooth();
  noStroke();

  // rectangle for the head
  fill(0, 0, 100);
  rect(200, 200, 300, 300);

  // left eye
  fill(255);
  ellipse(300, 300, 40, 70);

  // right eye
  fill(255);
  ellipse(400, 300, 40, 70);

  // smile
  fill(255, 0, 0);
  ellipse(350, 400, 200, 40);
}

