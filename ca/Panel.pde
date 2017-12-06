class Panel
{
  PShape moveW;
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
    moveW.vertex(width/2+width*.01f, height-(height/4.6));
    moveW.vertex(width/2+width*.01f, height-(height/4.9));
    moveW.vertex(width/2-width*.01f, height-(height/4.9));
    moveW.vertex(width/2-width*.01f, height-(height/4.6));
    moveW.endShape(CLOSE);
    shape(moveW);
  }

}