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
  loadData();
  PImage p1 =loadImage("1,jpg");
  PImage p2 =loadImage("2,jpg");
  PImage p4 =loadImage("4,jpg");
  PImage p5 =loadImage("5,jpg");
  PImage p6 =loadImage("6,jpg");
  PShape n1 = createShape(SPHERE,23);
  PShape n2 = createShape(SPHERE,46);
  PShape n4 = createShape(SPHERE,34);
  PShape n5 = createShape(SPHERE,13);
  PShape n6 = createShape(SPHERE,32);
  for(int i = 0; i<planets.size();i++)
  {
    Planet s = planets.get(i);
    PImage planI = loadImage(s.Ref);
    PShape planS = createShape(SPHERE,s.Size);
    planS.setTexture(planI);
  }

}
earth e;
Panel p;

ArrayList<Planet> planets = new ArrayList<Planet>();
  void loadData()
  {
      Table table = loadTable("data1.csv", "header");
      for(TableRow r:table.rows())
  {
   
    Planet planet = new Planet(r);
    planets.add(planet);
  }
    for(Planet s:planets)
  {
    println(s.Name);
  }

  }
  void drawPlanet()
  {
   
    for(Planet s:planets)
    {
      
   translate(s.xg,s.yg,s.zg);
   shape(planS);
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