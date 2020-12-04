class Asteroid extends Floater
{
  private double rotSpeed;
  public Asteroid() 
  {
    rotSpeed = (double)(Math.random()*8)-1;
    corners = 46;  //the number of corners, a triangular floater has 3   
    xCorners = new int[corners];   
    yCorners = new int[corners];
    xCorners[0] = -11;
    yCorners[0] = -8;
    xCorners[1] = 7;
    yCorners[1] = -8;
    xCorners[2] = 13;
    yCorners[2] = 0;
    xCorners[3] = 6;
    yCorners[3] = 10;
    xCorners[4] = -11;
    yCorners[4] = 8;
    xCorners[5] = -5;
    yCorners[5] = 0;
    myColor = color(140,78,27);   
    myCenterX = (int)(Math.random()*401);
    myCenterY = (int)(Math.random()*401);    
    myXspeed = 0; 
    myYspeed = 0;    
    myPointDirection = 0;
  }
  public void move()
  {
    
  }
}
