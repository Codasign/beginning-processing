class Face { 
  float x;
  float y; 
  float faceWidth;
  float faceHeight;

  Face (float _x, float _y, float _faceWidth, float _faceHeight) {  
    x = _x;
    y = _y; 
    faceWidth = _faceWidth;
    faceHeight = _faceHeight;
  } 

  void drawFace()
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
  
  void moveRight()
  {
     x = x+5; 
  }
  
  void moveLeft()
  {
     x = x-5; 
  }
}
