class earth
{
  float size;
  float rot;
  float rotSpeed;
  PImage earthIma;
  PShape globe;

  earth(float size,float rotSpeed)
  {
    this.size = size;
    this.rotSpeed = rotSpeed;
    earthIma =loadImage("earth.jpg");
    noStroke();
    globe = createShape(SPHERE, size);
  }
  void drawEarth()
  {
    pushMatrix();
    translate(width/2, height/2, mouseY);
    globe.rotateY(-rotSpeed);
    globe.setTexture(earthIma);
    shape(globe);
    popMatrix();
  }
}