void setup()
{
  fullScreen(P3D);
  smooth();
  e = new earth(300.33, 533.44, 33.55);
}
earth e;

void draw()
{
 background(0);
 e.drawEarth(); 
}