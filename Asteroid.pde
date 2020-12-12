//your variable declarations here
//Asteroid aster = new Asteroid();
Spaceship bob = new Spaceship();
public boolean isFiring = false;
ArrayList <Asteroid> asteroids = new ArrayList <Asteroid>(); //creates arraylist of Asteroids
ArrayList <Bullet> shots = new ArrayList <Bullet>(); //creates an arrayList of Bullet(s)

public void setup() 
{
  size(400,400);
  background(0);
  for(int i = 0; i < nightSky.length; i++)
  {
   nightSky[i] = new Star(); 
  }
  for(int i = 0; i < 10; i++)
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
  if(key == ' ')
  {
   shots.add(new Bullet(bob)); 
  }
}
public void draw() 
{
  //System.out.println(bob.getCenterX());
  background(0);
  bob.move(); //Spaceship not moving, but will once change y speed
  bob.show(); //came from parent class
  for(int i = 0; i < nightSky.length; i++)
  {
   nightSky[i].show(); 
  }
  //aster.show();
  //aster.move();
  for(int i = 0; i < asteroids.size(); i++) //equivalent to above comments, but with the list of asteroids
  { 
   asteroids.get(i).show();
   asteroids.get(i).move();
   //GAHHHHHHHHHHHHHHHH
   if (dist((float)bob.getCenterX(),(float)bob.getCenterY(),(float)asteroids.get(i).getCenterX(),(float)asteroids.get(i).getCenterY()) < 10)
   {
     asteroids.remove(i);
   }
  }
  for(int i = 0; i < shots.size(); i++)
  {
   shots.get(i).move();
   shots.get(i).show();
   //shots.getCenterX() and getCenterY() do not exist
   //if (dist((float)shots.get(i).getCenterX(),(float)shots.get(i).getCenterX(),(float)asteroids.get(i).getCenterX(),(float)asteroids.get(i).getCenterY()) < 10)
  }
}
