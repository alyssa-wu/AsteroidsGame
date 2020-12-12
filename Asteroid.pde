class Asteroid extends Floater
{
  private double rotSpeed;
  public Asteroid() 
  {
    rotSpeed = (double)(Math.random()*7)-1;
    corners = 6;  //the number of corners, a triangular floater has 3   
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
    myColor = color(150);   
    myCenterX = (double)(Math.random()*401.0);
    myCenterY = (double)(Math.random()*401.0);    
    myXspeed = (double)(Math.random()*3)-1.0; 
    myYspeed = (double)(Math.random()*3)-1.0;   
    myPointDirection = 0;
  }
  public void move()
  {
    turn(rotSpeed);
    super.move();
  }
  public void setXspeed(double x){
   myXspeed = x; 
  }
  public void setYspeed(double y){
   myYspeed = y; 
  }
  public void setCenterX(double x){
   myCenterX = x; 
  }
  public void setCenterY(double y){
   myCenterY = y; 
  }
  public double getCenterX(){
   return myCenterX;
  }
  public double getCenterY(){
   return myCenterY;
  }
}
