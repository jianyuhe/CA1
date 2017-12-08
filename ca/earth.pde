class earth
{
  float size;
  float rot;
  float rotSpeed;
  PImage earthIma;
  PShape globe;
  PImage moonIma;
  PShape moon;
  float theta=0;
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
   moonIma = loadImage("moon.jpg");
   moon = createShape(SHAPE,size);
  }
  void update()
  {  
    if(checkKey('w'))
    {
      translateZ += 10;
    }
    if(checkKey('s'))
    {
      translateZ -= 10;
    }
    if(checkKey('d'))
    {
      translateX -= 2;
    }
    if(checkKey('a'))
    {
      translateX += 2;
    }
    if(checkKey('q'))
    {
      translateY += 2;
    }
    if(checkKey('e'))
    {
      translateY -= 2;
    }
  }
  void drawEarth()
  {
    
    translate(translateX, translateY, translateZ);
    globe.rotateY(-rotSpeed);
    globe.setTexture(earthIma);
    shape(globe,width/2,height/2);
    pushMatrix();
    translate(width/2,height/2, 100);
    moon.rotateY(theta);
    moon.setTexture(moonIma);
    shape(moon);
    popMatrix();
    theta += 0.01;
  }
}