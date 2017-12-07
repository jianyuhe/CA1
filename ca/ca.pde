PImage bg;
void setup()
{
  size(1280,720,P3D);
  smooth();
  e = new earth(10, 0.1);
  p = new Panel();
  frameRate(68);
  bg = loadImage("bg.jpg");
}
earth e;
Panel p;
boolean keys[] = new boolean[1024];
void keyPressed()
{
  println("Key pressed");
  keys[keyCode] = true;
}

void keyReleased()
{
  println("Key released");
  keys[keyCode] = false;
}

boolean checkKey(int k)
{
  return keys[Character.toLowerCase(k)] || keys[Character.toUpperCase(k)]; 
}
void mousePressed()  
{
  if(mousePressed)
  {
    e.translateZ += 1;
  }
}
void draw()
{
 background(bg);
 e.drawEarth(); 
 e.update();
 p.drawPanel();
 p.drawMoveW();
 mousePressed();
 p.drawMoveD();
 p.drawMoveS();
 p.drawMoveA();
 p.drawRadar();
 p.update();
}