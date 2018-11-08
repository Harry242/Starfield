Particle[] dot;//your code here
void setup()
{
  dot=new Particle[500];
  size(500,500);
	for (int i=0;i<dot.length;i++)
  {
    dot[i]=new NormalParticle();
    dot[0]=new OddballParticle();
    dot[1]=new JumboParticle();
  }//your code here
}
void draw()
{
  background(0);
	for (int i=0;i<dot.length;i++)
  {
    dot[i].show();
    dot[i].move();
  }//your code here
}
class NormalParticle implements Particle
{
  int col,col2,col3;
  double myX,myY,dSpeed,dAngle;
  NormalParticle()
  {
    col=(int)(Math.random()*256);
    col2=(int)(Math.random()*256);
    col3=(int)(Math.random()*256);
    myX=250;
    myY=250;
    dSpeed=(double)(Math.random()*3)+2;
    dAngle=(double)(Math.random()*2*Math.PI);    
  }
  public void show()
  {
    fill(col,col2,col3);
    ellipse((float)myX,(float)myY,5,5);
  }
  public void move()
  { 
    myX=myX+Math.cos(dAngle)*dSpeed;
    myY=myY+Math.sin(dAngle)*dSpeed;
    if(myX>=500||myX<=0||myY>=500||myY<=0)
    {
      myX=myY=250;
      dSpeed=(double)(Math.random()*3)+2;
      dAngle=(double)(Math.random()*2*Math.PI);
    }
  }
}//your code here
interface Particle
{
	public void move();
  public void show();//your code here
}
class OddballParticle implements Particle//uses an interface
{
  double myX1,myX2,myY1,myY2,dSpeed,dAngle;
  OddballParticle()
  {
    myX1=240;
    myY1=240;
    myX2=260;
    myY2=260;
    dSpeed=(double)(Math.random()*3)+2;
    dAngle=(double)(Math.random()*2*Math.PI);
  }
  public void show()
  {
    fill(100,200,0);
    beginShape();
    vertex((float)myX1,(float)myY1);
    vertex((float)myX2,(float)myY1);
    vertex((float)myX2,(float)myY2);
    vertex((float)myX1,(float)myY2);
    endShape();
  }
  public void move()
  {
    myX2=myX2+Math.cos(dAngle)*dSpeed;
    myY2=myY2+Math.sin(dAngle)*dSpeed;
    myX1=myX1+Math.cos(dAngle)*dSpeed;
    myY1=myY1+Math.sin(dAngle)*dSpeed;
    if(myX1>=500||myX1<=0||myY1>=500||myY1<=0)
    {
    myY1=myX1=240;
    myY2=myX2=260;
    dSpeed=(double)(Math.random()*3)+2;
    dAngle=(double)(Math.random()*2*Math.PI);
    }
  }
	//your code here
}
class JumboParticle implements Particle//uses inheritance
{
  double myX,myY;
  JumboParticle()
  { 
    myX=250;
    myY=250;
  }
  public void show()
  {
    fill(255,255,0);
    ellipse((float)myX,(float)myY,100,100);
  }
  public void move()
  {
    if(myX>=250)
    {
      myX=myX+(Math.random()*8)-6;
    }
    else
    {
      myX=myX+(Math.random()*8)-2;
    }
    if(myY>=250)
    {
      myY=myY+(Math.random()*8)-6;
    }
    else
    {
      myY=myY+(Math.random()*8)-2;
  }
  }
	//your code here
}
