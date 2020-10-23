Dice[] pop = new Dice[100];
void setup()
{
  size(500,500);
  for(int i = 0; i <pop.length; i++)
  {
    pop[i] = new Dice();
  }
} 
void draw()
{
  background(20,20,20);
  for(int i = 0; i <pop.length; i++)
  {
    pop[i].rise();
    pop[i].show();
  }
}


class Dice
{
  float mySize;
  float myX;
  float num;
  float myY;
  float mySpeed;
  {
    mySize = (int)(Math.random()*80)+20;
    mySpeed =-mySize/25;
    myX=(int)(Math.random()*500);
    myY=(int)(Math.random()*500);
    
  }
  void roll()
      {
          num = (int)(Math.random()*6);
     
       
      }
  void rise()
  {
    myY = myY - mySpeed;
    myY = myY +(int)(Math.random()*3);
    myX = myX +(int)(Math.random()*6)-3;
    if(myY > 600)
    {
      myY = -100;
      
    }
    if(myX < -100)
    {
      myX = 600;
      
    }
  }
void show()
      {

        fill(300,300,300);
        rect(myX-25,myY-25,50,50);
        fill(0,0,0);
        if (num == 1)
        {
          ellipse(myX,myY,10,10);
        }
      else if (num == 2)
        {
          ellipse(myX+12.5,myY+12.5,10,10); 
          ellipse(myX-12.5,myY-12.5,10,10);
        }
        else if (num == 3)
        {
          ellipse(myX+12.5,myY+12.5,10,10);
          ellipse(myX,myY,10,10);
          ellipse(myX-12.5,myY-12.5,10,10);
        }
        else if (num == 4)
        {
          ellipse(myX+12.5,myY+12.5,10,10);
          ellipse(myX+12.5,myY-12.5,10,10);
          ellipse(myX-12.5,myY-12.5,10,10);
          ellipse(myX-12.5,myY+12.5,10,10);
        }
        else if (num == 5)
        {
          ellipse(myX+12.5,myY+12.5,10,10);
          ellipse(myX+12.5,myY-12.5,10,10);
          ellipse(myX-12.5,myY-12.5,10,10);
          ellipse(myX-12.5,myY+12.5,10,10);
          ellipse(myX,myY,10,10);
        }
        else
        {
          ellipse(myX+12.5,myY,10,10);
          ellipse(myX-12.5,myY,10,10);
          ellipse(myX+12.5,myY+12.5,10,10);
          ellipse(myX+12.5,myY-12.5,10,10);
          ellipse(myX-12.5,myY-12.5,10,10);
          ellipse(myX-12.5,myY+12.5,10,10);
        }





      }
}
