class Panel
  {
   PShape Panel;
   
    PShape moveW;
    PShape moveD;
    PShape moveS;
    PShape moveA;
    float theta;
   float speed = (TWO_PI / 60.0) * 0.5;
    boolean moveWb = false;
   PImage panelBackg;
   float RcharSpeed = 10;
    float Rh = -100;
    float ES = 8;
    float EX = width*0.2;
    float EX1 = width*0.4;
   
    void drawPanel()
    {
    // rect(0, height-(height/4), width, height/4);
    Panel = createShape();

    panelBackg =loadImage("3.jpg");
   
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
      
    
    }
    void drawMoveW()
   {
      moveW = createShape();
     moveW.beginShape();
     moveW.fill(204, 102, 0);
    moveW.stroke(0);
     moveW.vertex(width/2, height-(height/4.2));
     moveW.vertex(width/2+width*.01f, height-(height/4.2)+width*.01f);
     moveW.vertex(width/2+width*.01f, height-(height/4.2)+width*.02f);
     moveW.vertex(width/2-width*.01f, height-(height/4.2)+width*.02f);
     moveW.vertex(width/2-width*.01f, height-(height/4.2)+width*.01f);
     moveW.endShape(CLOSE);
     shape(moveW);
     if(mousePressed)
     {
       if(mouseX >width/2-width*.01f && mouseX <width/2+width*.01f && mouseY >height-(height/4.2) && mouseY < height-(height/4.2)+width*.02)
       {
         e.translateY += 2;
         
       }
     }
   }
   void drawMoveD()
   {
      moveD = createShape();
     moveD.beginShape();
     moveD.fill(0,255,255);
    moveD.stroke(0);
    moveD.vertex(width/2+width*.01f, height-(height/4.2)+width*.02f);
    moveD.vertex(width/2+width*.02f,height-(height/4.2)+width*.02f);
    moveD.vertex(width/2+width*.03f,height-(height/4.2)+width*.03f);
    moveD.vertex(width/2+width*.02f,height-(height/4.2)+width*.04f);
    moveD.vertex(width/2+width*.01f,height-(height/4.2)+width*.04f);
    moveD.endShape(CLOSE);
     shape(moveD);
     if(mousePressed)
     {
       if(mouseX>width/2+width*.01f && mouseX <width/2+width*.03f && mouseY >height-(height/4.2)+width*.02f && mouseY <height-(height/4.2)+width*.04f)
       {
         e.translateX -= 2;
       }
     }
   }
   void drawMoveS()
   {
      moveS = createShape();
     moveS.beginShape();
     moveS.fill(204, 102, 0);
    moveS.stroke(0);
    moveS.vertex(width/2+width*.01f,height-(height/4.2)+width*.04f);
    moveS.vertex(width/2+width*.01f,height-(height/4.2)+width*.05f);
    moveS.vertex(width/2,height-(height/4.2)+width*.06f);
    moveS.vertex(width/2-width*.01f,height-(height/4.2)+width*.05f);
    moveS.vertex(width/2-width*.01f,height-(height/4.2)+width*.04f);
     moveS.endShape(CLOSE);
     shape(moveS);
    if(mousePressed)
    {
      if(mouseX >width/2-width*.01f && mouseX <width/2+width*.01f && mouseY >height-(height/4.2)+width*.04f && mouseY <height-(height/4.2)+width*.06f)
      {
        e.translateY -= 2;
      }
    }
   }
     void drawMoveA()
   {
      moveA = createShape();
     moveA.beginShape();
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
 
 void drawRadar()
 {
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
 }
 void drawQE()
 {fill(255,0,255);
      triangle(width/2, height-(height/3.5), width/2+width*.03f,height-(height/4),width/2-width*.03f,height-(height/4));
   
   triangle(width/2, height-(height/4.9)+width*.06f, width/2+width*.03f,height-(height/4.4)+width*.06f,width/2-width*.03f,height-(height/4.4)+width*.06f);
   fill(20);
   rect(width/2+width*.1f,height-(height/4.2)+width*.01f, width/2 - width*.3f, height/5);
   fill(255);
   textAlign(CENTER);
   text("Spacecraft in flight....", width/2+width*.1f+(width/2 - width*.3f)/2,height-(height/4.2)+width*.01f+height/10);
   if(mousePressed)
   {
     if(mouseX >width/2-width*.03f && mouseX < width/2+width*.03f && mouseY >height-(height/3.5) && mouseY <height-(height/4))
     {
        e.translateZ += 10;
     }
     else if(mouseX>width/2-width*.03f && mouseX < width/2+width*.03f && mouseY <height-(height/4.9)+width*.06f && mouseY >height-(height/4.4)+width*.06f)
     {
       e.translateZ -= 10;
     }
   }
 }      
 void drawchar()
 {
   float h = random(255);
   fill(h);
    Rh+=RcharSpeed;
   
      if(Rh == -30 || Rh == -190)
  {
    RcharSpeed = - RcharSpeed ;
  }
  for(int i = 0; i <40; i ++)
  {
    float r = random(80);
  rect(i*width*.005,height,width*.005,Rh+r);
  }
  
     EX+=ES;
     EX1-=ES;
  if(EX == width*0.4 || EX == width*0.2)
  {
    ES = - ES ;
  }
  for(int i=0; i<10;i++)
  {
    float r = random(40);
    
  
  ellipse(EX+r,(height-height*0.2f)+i*15,10,10);
   ellipse(EX1+r,(height-height*0.2f)+i*15,10,10);
   stroke(30);
   line(width*0.2,(height-height*0.2f)+i*15,width*0.44,(height-height*0.2f)+i*15);
  }
 }
 }
 