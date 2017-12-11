class Planet
{
 
  String Name;
  float xg, yg, zg;
  float Size;
  PImage texture;
  PShape plan;
  Planet(String Name, float xg, float yg, float zg, float Size, PImage texture)
  {
    // this refers to the field
   
    this.Name = Name;
  
    this.xg = xg;
    this.yg = yg;
    this.zg = zg;
    plan = createShape(SPHERE,Size);
    this.texture = texture;
  }
    
  }
 void drawPlanet()
 {
   pushMatrix();
   
   translate(xg,yg,zg);
   plan.setTexture(texture);
   shape(plan);
   
   popMatrix();
 }
  
}