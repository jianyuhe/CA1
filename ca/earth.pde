class earth
{
  float size;
  float rot;
  float rotSpeed;
  float radius;
  PImage earthIma;
  PShape globe;
  earth()
  {
    size = 0;
    rot = 0;
    rotSpeed = 0;
    
  }
  earth(float size, float rot, float rotSpeed)
  {
    this.size = size;
    this.rot = rot;
    this.rotSpeed = rotSpeed;
    earthIma =loadImage("earth.jpg");
    
    noStroke();
    globe = createShape(SPHERE, size);
  }
  void drawEarth()
  {
    pushMatrix();
    translate(width/2, height/2, 0);
    globe.rotateY(rotSpeed);
    globe.setTexture(earthIma);
    shape(globe);
    popMatrix();
  }
}