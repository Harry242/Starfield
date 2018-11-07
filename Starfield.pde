NormalParticle[] orb=new NormalParticle[1];//your code here
void setup()
{
  size(500,500);
  background(0);
	for (int i=0;i<orb.length;i++)
  {
    orb[i]=new NormalParticle();
  }//your code here
}
void draw()
{
	//your code here
}
class NormalParticle
{
  int col;
  double myX,myY,dSpeed,dAngle;
  NormalParticle()
  {
    col=(int)(Math.random()*256);
    myX=250;
    myY=250;
    dSpeed=(double)(Math.random()*50)-25;
    dAngle=(double)(Math.random()*2*Math.PI);    
  }
  void show()
  {
    ellipse((float)myX,(float)myY,5,5);
  }
  void move()
  {
    myX=myX+dSpeed;
    myY=myY+dSpeed;
  }
}//your code here
interface Particle
{
	//your code here
}
class OddballParticle implements Particle//uses an interface
{
	//your code here
}
class JumboParticle implements Particle//uses inheritance
{
	//your code here
}
