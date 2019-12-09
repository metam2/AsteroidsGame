//your variable declarations here
Spaceship ship;
ArrayList <Star> stars;
ArrayList <Asteroid> asteroids;
ArrayList <Bullet> bullets;
public void setup() 
{
  size(500, 500);
  ship = new Spaceship();
  stars = new ArrayList <Star>();
  asteroids = new ArrayList <Asteroid>();
  bullets = new ArrayList <Bullet>();

  for(int i = 0; i < 30; i++)
    {stars.add(new Star());}
  for(int i = 0; i < 10; i++)
    {asteroids.add(new Asteroid());}

  //bullets.add(new Bullet());
  frameRate(20);
}
public void draw() 
{
  fill(0, 0, 0);
  rect(0, 0, width, height);

  
  for(int i = 0; i < stars.size(); i++)
  {
    stars.get(i).rotate();
    stars.get(i).show();
  }
  for(int i = 0; i < bullets.size(); i++)
  {
    bullets.get(i).move();
    bullets.get(i).show();
  }

  for(int i = 0; i < asteroids.size(); i++)
  {
    asteroids.get(i).move();
    asteroids.get(i).show();
    if(dist(ship.getX(), ship.getY(), asteroids.get(i).getX(), asteroids.get(i).getY()) < 20)
    {
      asteroids.remove(i);
      i--;
    }
  }

  if(keyPressed)
  {
    if(key == 'w')
   		{ship.accelerate(0.2);}
  	if(key == 's')
  		ship.accelerate(-0.2);
  	if(key == 'd')
  		ship.turn(10);
  	if(key == 'a')
  		ship.turn(-10);
  }
  ship.move();
  ship.show();

  
}


void keyReleased()
{
	if(key == 'd')
		{key = 'w';}
  if(key == 'a')
  	{key = 'w';}
  if(key == 'q')
    ship.hyperSpace();
  if(key == ' ')
    bullets.add(new Bullet());
}