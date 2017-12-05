void setup()
{
  size(1000,1000,P3D);
  smooth();
  e = new earth(10, 0.1);
  p = new Panel();
  frameRate(30);
}
earth e;
Panel p;
void draw()
{
 background(0);
 e.drawEarth(); 
 p.drawPanel();
}