class Panel
{
  PShape moveW;
  PShape moveD;
  PShape moveS;
  boolean moveWb = false;
  void drawPanel()
  {
   // rect(0, height-(height/4), width, height/4);
    beginShape();
    vertex(0,height);
    vertex(width, height);
    vertex(width, height/2);
    vertex(width-(width/8), height-(height/4));
    vertex(width/2+width*.1f,height-(height/4));
    vertex(width/2, height/2+height*.12);
    vertex(width/2-width*.1f,height-(height/4));
    vertex(width/8, height-(height/4));
    vertex(0,height/2);
    endShape(CLOSE);
    fill(0,255,255);
   
    
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

}