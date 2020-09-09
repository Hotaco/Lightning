//Zap zap 1
int startX1 = 190;
int startY1 = 158;
static int endX = 0;
static int endY = 0;
//Zap zap 2
int startX2 = 401;
int startY2 = 211;
//Zap zap 3
int startX3 = 207;
int startY3 = 219;
//Zap zap 4
int startX4 = 391;
int startY4 = 152;


void setup()
{
  size(600,600);
  background(0,0,75);
  frameRate(25);
  fill(0,25,0);
  noStroke();
  ellipse(300,700,700,500);
  drawCoil();
}

void draw()
{
  if(mousePressed == true)
  {
    strokeWeight(5);
    stroke(50,0,255);
    fill(0,0,0,15);
    //Zap zap 1
    endX = startX1 + ((int)(Math.random()*32)-24);
    endY = startY1 + ((int)(Math.random()*16)-16);
    line(startX1, startY1, endX, endY);
    startX1 = endX;
    startY1 = endY;
    
    //Zap zap 2
    endX = startX2 + ((int)(Math.random()*32)-14);
    endY = startY2 + ((int)(Math.random()*20));
    line(startX2, startY2, endX, endY);
    startX2 = endX;
    startY2 = endY;
    
    //Zap zap 3
    endX = startX3 + ((int)(Math.random()*32)-24);
    endY = startY3 + ((int)(Math.random()*20));
    line(startX3, startY3, endX, endY);
    startX3 = endX;
    startY3 = endY;
    
    //Zap zap 4
    endX = startX4 + ((int)(Math.random()*32));
    endY = startY4 + ((int)(Math.random()*20));
    line(startX4, startY4, endX, endY);
    startX4 = endX;
    startY4 = endY;
  }
}

void mouseReleased()
{
  //Zap zap 1
  startX1 = 190;
  startY1 = 158;
  //Zap zap 2
  startX2 = 401;
  startY2 = 211;
  //Zap zap 3
  startX3 = 207;
  startY3 = 219;
  //Zap zap 4
  startX4 = 391;
  startY4 = 152;

  System.out.print(mouseX);
  System.out.println(","+mouseY);
}


public void drawCoil()
{
  //Tesla Coil
  noStroke();
  //The round part electric stuff comes out
  fill(200,200,200);
  rect(225,150,150,75);
  ellipse(225,188,100,74);
  ellipse(375,188,100,74);
  //Copper Part
  fill(183, 118, 0);
  rect(265,225,65,400);

  //Draw Lines
  for(int i = 0; i < 600; i+=5)
  {
    stroke(90,50,0);
    strokeWeight(2);
    line(265,226+i,330,226+i);
  }
  
  //Based
  fill(0,0,0);
  noStroke();
  rect(250,555,90,100);
}
