//your variable declarations here
Spaceship bob = new Spaceship();
//Asteroid aster = new Asteroid();
boolean isFiring = false;
ArrayList <Asteroid> asteroids = new ArrayList <Asteroid>(); //creates arraylist of Asteroids

public void setup() 
{
  size(400,400);
  background(0);
  for(int i = 0; i < nightSky.length; i++)
  {
   nightSky[i] = new Star(); 
  }
  for(int i = 0; i < 11; i++)
  {
   asteroids.add(new Asteroid()); 
  }
  
}
public void keyPressed()
{
  if(key == 's')
  {
    bob.setXspeed(0);
    bob.setYspeed(0);
    isFiring = false;
  }
  if(key == 'w')
  {
    bob.accelerate(0.2);
    isFiring = true;
  }
  if(key == 'a')
  {
   bob.setXspeed(0);
   bob.setYspeed(0);
   bob.turn(-10); //rotate counterclockwise 
   isFiring = false;
  }
  if(key == 'd')
  {
   bob.setXspeed(0);
   bob.setYspeed(0);
   bob.turn(10); //rotate clockwise
   isFiring = false;
  }
  if(key == 'h')
  {
   bob.hyperspace(); 
   isFiring = false;
  }
}
public void draw() 
{
  background(0);
  bob.move(); //Spaceship not moving, but will once change y speed
  bob.show(); //came from parent class
  for(int i = 0; i < nightSky.length; i++)
  {
   nightSky[i].show(); 
  }
  //aster.show();
  //aster.move();
  for(int i = 0; i < 11; i++) //equivalent to above comments, but with the list of asteroids
  {
   asteroids.get(i).show();
   asteroids.get(i).move();
  }
}
