OOP CA1 Report.

my aim is to create a sci-fi themed user interface.

I craete a Spaceship perspective to visit the planets.

the user can use keyboard through "q", "w","e","a","s" and "d" to control the perspective and move of spaceship.
the user can use mouse to control the spaceship as well.

I set up a 3d space. 
I used PShape function to draw panel of spaceship. 
e.g: 

       beginShape();
     
         texture(panelBackg);
       vertex(0,height,0,0,0);
       vertex(width, height,0,400,0);
       vertex(width, height/2,0,400,0);
       vertex(width-(width/8), height-(height/4),0,0,400);
       vertex(width/2+width*.1f,height-(height/4),0,0,400);
      vertex(width/2, height/2+height*.12,0,400,0);
       vertex(width/2-width*.1f,height-(height/4),0,400,0);
      vertex(width/8, height-(height/4),0,0,400);
      vertex(0,height/2,0,0,400);
      
      Panel.endShape(CLOSE);
      shape(Panel);
       endShape(CLOSE);

I used cos, sin and some variable to draw a dynamic radar and used some variable and for loop to darw barchart.
e.g:

      float cx = width- width/11;
      float cy = height- width/11;
   
      float radius = width*.05f;
  
      stroke(0, 255, 0);
     fill(0);
     ellipse(cx, cy, width*.1f, width*.1f);
     for(int i=0; i<5;i++)
     {
       ellipse(cx, cy, width*.1f-i*width*.02f, width*.1f-i*width*.02f);
     }
     int trailLength = 10;
     float greenIntensity = 255 / (float)trailLength;
  
     theta += speed;
     for(int i = 0 ; i < trailLength ; i ++)
     {
       
        stroke(0, i * greenIntensity, 0);
       float x = cx + sin(theta + i * speed) * radius;
       float y = cy -cos(theta + i * speed) * radius;
       line(cx, cy, x, y);
     }
 I used PShape function to draw some control button and use checkkey and mousePressed method to control the buttons.
 
        e.g
       void drawMoveA()
      {
          moveA = createShape();
        oveA.beginShape();
     moveA.fill(0,255,255);
      moveA.stroke(0);
      moveA.vertex(width/2-width*.01f, height-(height/4.2)+width*.02f);
     moveA.vertex(width/2-width*.02f,height-(height/4.2)+width*.02f);
     moveA.vertex(width/2-width*.03f,height-(height/4.2)+width*.03f);
     moveA.vertex(width/2-width*.02f,height-(height/4.2)+width*.04f);
     moveA.vertex(width/2-width*.01f,height-(height/4.2)+width*.04f);
     moveA.endShape(CLOSE);
      shape(moveA);
     if(mousePressed)
     {
       if(mouseX >width/2-width*.03f && mouseX <width/2-width*.01f && mouseY >height-(height/4.2)+width*.02f && mouseY <height-(height/4.2)+width*.04f)
       {
         e.translateX += 2;
       }
     }
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
     
I used arraylist method to create planets.

     e.g
           ArrayList<PImage> textures = new ArrayList<PImage>();
          ArrayList<Planet> planets = new ArrayList<Planet>();
          String[] planetNames = {"mer", "sdr", "aas", "fgg","ijg","iio","urh", "hhd"};
     float[] xg = {300,223,1000,299,463,0,500,435};
    float[] yg = {400,332,0,590,30,632,23,654};
     float[] zg = {0,34,24,35,10,64,62,32};
      float[] Size = {23,45,32,11,16,26,64,32};

I used rotate function to allowed earth and moon rotate.

          e.g
      void drawEarth()
   
    {
  
    
    noFill();
    noStroke();
    box(1500);
      pushMatrix();
    translate(width/2,height/2,0);
    globe.rotateY(-rotSpeed);
    globe.setTexture(earthIma);
    shape(globe);
    pushMatrix();
    rotate(theta);
    translate(width/2-width*.5f,height/2,20);
    moon.rotateY(theta);
    moon.setTexture(moonIma);
    shape(moon);
    
    pushMatrix();
    rotateZ(theta*2);
    translate(width/2-width*.5f,height/2,15);
    aster.setTexture(asterIma);
    shape(aster);
    
     popMatrix();
     popMatrix();
    popMatrix();

    theta += 0.05;
       }
  I used translate function to control perspective.
  
        e.g
       ackground(bg);
       pushMatrix();
       translate(e.translateX, e.translateY, e.translateZ);
      e.drawEarth(); 
      drawPlanet();
       popMatrix();
       
My most proud is that i can use arraylist method to create many planets.

 
