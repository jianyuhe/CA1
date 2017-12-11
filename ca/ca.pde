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
  
}
earth e;
Panel p;
Planet s;
ArrayList<Planet> planets = new ArrayList<Planet>();
  void loadData()
  {
      Table table = loadTable("data1.csv", "header");
      for(TableRow r:table.rows())
  {
   
    Planet planet = new Planet(r);
    planets.add(planet);
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
void mousePressed()  
{

}
void draw()
{
 background(bg);
 e.drawEarth(); 
 e.update();
 p.drawPanel();
 p.drawMoveW();
 p.drawMoveD();
 p.drawMoveS();
 p.drawMoveA();
 p.drawRadar();
// p.update();
 p.drawchar();


}