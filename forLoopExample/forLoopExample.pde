
void setup()
{
  size(800, 800);

  smooth();
}

void draw()
{
  translate(width/2, height/2);

  int numLines = (int) map(mouseX, 0, width, 10, 20);
  float angle = 360.0/numLines;
  float radius = mouseY/2;

  background(255);

  //beginShape(TRIANGLE_FAN);
  //vertex(width/2,height/2);
  //vertex(0, 0);
  for (int i = 0;i <= numLines;i = i+1)
  {
    float x = cos(radians(angle*i)) * radius;
    float y = sin(radians(angle*i)) * radius;
    line(0, 0, x, y);
    //vertex(x, y);
    //fill(angle, mouseX, mouseY);
  }
  //endShape();
}

