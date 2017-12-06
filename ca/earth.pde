class earth
{
  float size;
  float rot;
  float rotSpeed;
  PImage earthIma;
  PShape globe;
  float translateX;
  float translateY;
  float translateZ;
  earth(float size,float rotSpeed)
  {
    this.size = size;
    this.rotSpeed = rotSpeed;
    earthIma =loadImage("earth.jpg");
    noStroke();
    globe = createShape(SPHERE, size);
   
  }
  void update()
  {
    if(checkKey('w'))
    {
      translateZ += 1;
    }
    if(checkKey('s'))
    {
      translateZ -= 1;
    }
    if(checkKey('d'))
    {
      translateX += 1;
    }
    if(checkKey('a'))
    {
      translateX -= 1;
    }
  }
  void drawEarth()
  {
    pushMatrix();
    translate(translateX, height/2, translateZ);
    globe.rotateY(-rotSpeed);
    globe.setTexture(earthIma);
    shape(globe);
    popMatrix();
  }
}