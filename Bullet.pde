class Bullet extends Floater
{
 public Bullet(Spaceship bob)
 {
   //bullet constructor
   myCenterX = bob.getCenterX();
   myCenterY = bob.getCenterY();
   myXspeed = bob.getXspeed();
   myYspeed = bob.getYspeed();
   myPointDirection = bob.getPointDirection();
   accelerate(4);
 }
 public void show() //overrides floater class's show()
 {
  fill(255,255,0);
  //noStroke();
  //ellipse((float)myCenterX,(float)myCenterY,5,5); 
  textSize(10);
  text("pew",(float)myCenterX,(float)myCenterY);
 }
}
