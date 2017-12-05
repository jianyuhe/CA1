class earth
{
  float size;
  float rot;
  float rotSpeed;
  float radius;
  PImage earthIma;
  PShape earthS;
  earth()
  {
    size = 0;
    rot = 0;
    rotSpeed = 0;
    
  }
  earth(float size, float rot, float rotSpeed, PImage earthIma)
  {
    this.size = size;
    this.rot = rot;
    this.rotSpeed = rotSpeed;
    this.earthIma = earthIma;
    noStroke();
    earthS = createShape(SPHERE, size);
    
  }
}