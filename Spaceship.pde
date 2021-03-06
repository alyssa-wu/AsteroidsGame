class Spaceship extends Floater  
{   
  public Spaceship() {
  corners = 4;  //the number of corners, a triangular floater has 3   
  xCorners = new int[corners];   
  yCorners = new int[corners];
  xCorners[0] = -8;
  yCorners[0] = -8;
  xCorners[1] = 16;
  yCorners[1] = 0;
  xCorners[2] = -8;
  yCorners[2] = 8;
  xCorners[3] = -2;
  yCorners[3] = 0;
  myColor = 255;   
  myCenterX = 200;
  myCenterY = 200;    
  myXspeed = 0; 
  myYspeed = 0;    
  myPointDirection = 0; //holds current direction the ship is pointing in degrees
  }
  public void show ()  //Draws the floater at the current position  
  {             
    fill(myColor);   
    stroke(myColor);    
    
    //translate the (x,y) center of the ship to the correct position
    translate((float)myCenterX, (float)myCenterY);

    //convert degrees to radians for rotate()     
    float dRadians = (float)(myPointDirection*(Math.PI/180));
    
    //rotate so that the polygon will be drawn in the correct direction
    rotate(dRadians);
    
    //draw the polygon
    beginShape();
    for (int nI = 0; nI < corners; nI++)
    {
      vertex(xCorners[nI], yCorners[nI]);
    }
    endShape(CLOSE);
    if(isFiring == true)
    {
      noStroke();
      fill(255,100,0);
      triangle(-16,-5,-16,5,-8,0);
    }

    //"unrotate" and "untranslate" in reverse order
    rotate(-1*dRadians);
    translate(-1*(float)myCenterX, -1*(float)myCenterY);
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
  public double getXspeed(){
   return myXspeed;
  }
  public double getYspeed(){
   return myYspeed;
  }
  public double getPointDirection(){
   return myPointDirection; 
  }
  public void hyperspace(){
    bob.setXspeed(0);
    bob.setYspeed(0);
    setCenterX((int)(Math.random()*401));
    setCenterY((int)(Math.random()*401));
  }
}
