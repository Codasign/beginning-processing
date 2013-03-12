
int circleSize = 800;
int r = 255;


void setup()
{
   size(800,800); 
   
   smooth();
   noStroke();
}


void draw()
{
  background(0);
 
  while (circleSize > 100)
  {
    fill(r,mouseX/3,mouseY/3);
    ellipse(width/2,height/2,circleSize,circleSize);
    circleSize = circleSize - 50;
    r = r-20;
  }
  circleSize = 800;
  r = 255;
}

/*
void draw()
{
  fill(255,0,0);
  ellipse(width/2,height/2,800,800);
  
  fill(230,0,0);
  ellipse(width/2,height/2,700,700);
  
  fill(200,0,0);
  ellipse(width/2,height/2,600,600);
  
  fill(170,0,0);
  ellipse(width/2,height/2,500,500);
  
  fill(140,0,0);
  ellipse(width/2,height/2,400,400);
  
  fill(110,0,0);
  ellipse(width/2,height/2,300,300);
  
  fill(80,0,0);
  ellipse(width/2,height/2,200,200);
  
  fill(50,0,0);
  ellipse(width/2,height/2,100,100);
}*/
