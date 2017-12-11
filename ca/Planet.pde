class Planet
{
 
  String Name;
  String Ref;
  float xg, yg, zg;
  float Size;
  PImage texture;
  PShape plan;
  Planet(String Name, float xg, float yg, float zg, String Ref, float Size, PImage texture)
  {
    // this refers to the field
   
    this.Name = Name;
  this.Ref = Ref;
    this.xg = xg;
    this.yg = yg;
    this.zg = zg;
    plan = createShape(SPHERE,Size);
    this.texture = texture;
  }
    Planet(TableRow row)
  {
   Name = row.getString("Name");
  Ref = row.getString("Ref");
    xg = row.getFloat("xg");
    yg = row.getFloat("yg");
    zg = row.getFloat("zg");
    Size = row.getFloat("Size");
    
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