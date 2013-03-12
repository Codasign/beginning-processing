import toxi.math.*;
import toxi.color.*;

void setup() {
  size(800,600);
}

void draw() {
  ColorGradient grad=new ColorGradient();
  // use alternative interpolation function when mouse is pressed
  if (!mousePressed) {
    grad.setInterpolator(new CosineInterpolation());
  }
  
  grad.addColorAt(mouseX,TColor.RED);
  grad.addColorAt(width,TColor.BLUE);
  grad.addColorAt(mouseY,TColor.GREEN);
  
  /*
  grad.addColorAt(0,TColor.BLACK);
  grad.addColorAt(width,TColor.BLUE);
  grad.addColorAt(mouseX,TColor.RED);
  grad.addColorAt(width-mouseX,TColor.YELLOW);
  
    */
  ColorList l=grad.calcGradient(0,width);

  int x=0;
  
  for(Iterator i=l.iterator(); i.hasNext();) {
    TColor c=(TColor)i.next();
    stroke(c.toARGB());
    line(x,0,x,height);
    x++;
  }
  
}
