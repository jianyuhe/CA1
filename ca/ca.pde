PImage bg;

void setup()
{
  size(1280,720,P3D);
  smooth();
  e = new earth(40, 0.1);
  p = new Panel();
  frameRate(100);
  bg = loadImage("bg.jpg");
  perspective(PI/3.0,(float)width/height,0.001,100000);

  PImage p1 =loadImage("1.jpg");
  PImage p2 =loadImage("2.jpg");
  PImage p4 =loadImage("4.jpg");
  PImage p5 =loadImage("5.jpg");
  PImage p6 =loadImage("6.jpg");
 
  textures.add(p1);
  textures.add(p2);
  textures.add(p4);
  textures.add(p5); 
  textures.add(p6); 
for(int i =0;i<5;i++)
{
  Planet s = new Planet(planetNames[i],xg[i],yg[i],zg[i],Size[i],textures.get(i));
    planets.add(s);
}
}
earth e;
Panel p;
ArrayList<PImage> textures = new ArrayList<PImage>();

ArrayList<Planet> planets = new ArrayList<Planet>();
String[] planetNames = {"mer", "sdr", "aas", "fgg","ijg"};
float[] xg = {300,223,1000,299,463};
float[] yg = {400,332,0,590,30};
float[] zg = {0,34,24,35,10};
float[] Size = {23,45,32,11,16};

  void drawPlanet()
  {
   
    for(int i =0; i<5; i++)
    {
      planets.get(i).drawPlanet();
    }
  }
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

void draw()
{
 background(bg);
pushMatrix();
translate(e.translateX, e.translateY, e.translateZ);
 e.drawEarth(); 
  drawPlanet();
      popMatrix();
 e.update();
 p.drawPanel();
 p.drawMoveW();
 p.drawMoveD();
 p.drawMoveS();
 p.drawMoveA();
 p.drawRadar();
 p.drawchar();
p.drawQE();

}