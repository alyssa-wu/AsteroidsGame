Star[] nightSky = new Star[200];

class Star //note that this class does NOT extend Floater
{
  private int myX;
  private int myY;
  public Star()
  {
   myX = (int)(Math.random()*401); 
   myY = (int)(Math.random()*401); 
  }
  public void show()
  {
   stroke(255);
   fill(255);
   ellipse(myX, myY, 1, 1);
  }
}
