class Panel
{
  PShape Panel;
  PShape moveW;
  PShape moveD;
  PShape moveS;
  PShape moveA;
  float theta;
  float speed = (TWO_PI / 60.0) * 3;
  boolean moveWb = false;
  void drawPanel()
  {
   // rect(0, height-(height/4), width, height/4);
   Panel = createShape();
       Panel.beginShape();
       Panel.fill(200);
     Panel.vertex(0,height);
     Panel.vertex(width, height);
     Panel.vertex(width, height/2);
     Panel.vertex(width-(width/8), height-(height/4));
     Panel.vertex(width/2+width*.1f,height-(height/4));
     Panel.vertex(width/2, height/2+height*.12);
     Panel.vertex(width/2-width*.1f,height-(height/4));
     Panel.vertex(width/8, height-(height/4));
     Panel.vertex(0,height/2);
      
     Panel.endShape(CLOSE);
     shape(Panel);
   
  }
  void drawMoveW()
  {
     moveW = createShape();
    moveW.beginShape();
    moveW.fill(120);
   moveW.stroke(0);
    moveW.vertex(width/2, height-(height/4.2));
    moveW.vertex(width/2+width*.01f, height-(height/4.2)+width*.01f);
    moveW.vertex(width/2+width*.01f, height-(height/4.2)+width*.02f);
    moveW.vertex(width/2-width*.01f, height-(height/4.2)+width*.02f);
    moveW.vertex(width/2-width*.01f, height-(height/4.2)+width*.01f);
    moveW.endShape(CLOSE);
    shape(moveW);
  }
  void drawMoveD()
  {
     moveD = createShape();
    moveD.beginShape();
    moveD.fill(120);
   moveD.stroke(0);
   moveD.vertex(width/2+width*.01f, height-(height/4.2)+width*.02f);
   moveD.vertex(width/2+width*.02f,height-(height/4.2)+width*.02f);
   moveD.vertex(width/2+width*.03f,height-(height/4.2)+width*.03f);
   moveD.vertex(width/2+width*.02f,height-(height/4.2)+width*.04f);
   moveD.vertex(width/2+width*.01f,height-(height/4.2)+width*.04f);
   moveD.endShape(CLOSE);
    shape(moveD);
  }
  void drawMoveS()
  {
     moveS = createShape();
    moveS.beginShape();
    moveS.fill(120);
   moveS.stroke(0);
   moveS.vertex(width/2+width*.01f,height-(height/4.2)+width*.04f);
   moveS.vertex(width/2+width*.01f,height-(height/4.2)+width*.05f);
   moveS.vertex(width/2,height-(height/4.2)+width*.06f);
   moveS.vertex(width/2-width*.01f,height-(height/4.2)+width*.05f);
   moveS.vertex(width/2-width*.01f,height-(height/4.2)+width*.04f);
    moveS.endShape(CLOSE);
    shape(moveS);
   
  }
    void drawMoveA()
  {
     moveA = createShape();
    moveA.beginShape();
    moveA.fill(120);
   moveA.stroke(0);
   moveA.vertex(width/2-width*.01f, height-(height/4.2)+width*.02f);
   moveA.vertex(width/2-width*.02f,height-(height/4.2)+width*.02f);
   moveA.vertex(width/2-width*.03f,height-(height/4.2)+width*.03f);
   moveA.vertex(width/2-width*.02f,height-(height/4.2)+width*.04f);
   moveA.vertex(width/2-width*.01f,height-(height/4.2)+width*.04f);
   moveA.endShape(CLOSE);
    shape(moveA);
  }
  void update()
  {
    theta += speed;
  }
void drawRadar()
{
  float cx = width- width/10;
  float cy = height- width/10;
  
  float radius = width*.05f;
  boolean start = true;
    stroke(0, 255, 0);
    fill(0);
    ellipse(cx, cy, width*.1f, width*.1f);
    int trailLength = 10;
    float greenIntensity = 255 / (float)trailLength;
   if(start)
   {
     theta += speed;
   }
   
    for(int i = 0 ; i < trailLength ; i ++)
    {
      
       stroke(0, i * greenIntensity, 0);
      float x = cx + sin(theta + i * speed) * radius;
      float y = cy -cos(theta + i * speed) * radius;
      line(cx, cy, x, y);
}
}
}