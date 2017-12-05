void setup()
{
  size(1000,1000,P3D);
  smooth();
  e = new earth(100, 0.1);
  frameRate(30);
}
earth e;

void draw()
{
 background(0);
 e.drawEarth(); 
}