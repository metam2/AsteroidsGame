//your variable declarations here
Spaceship ship;
ArrayList <Star> stars;
ArrayList <Asteroid> asteroids;
ArrayList <Bullet> bullets;
int count, hp;
public void setup() 
{
  size(500, 500);
  ship = new Spaceship();
  stars = new ArrayList <Star>();
  asteroids = new ArrayList <Asteroid>();
  bullets = new ArrayList <Bullet>();
  count = 0;
  hp = 3;

  for(int i = 0; i < 30; i++)
    {stars.add(new Star());}
  for(int i = 0; i < 10; i++)
    {asteroids.add(new Asteroid());}

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
    if(bullets.get(i).moveNoLoop())
      {
        bullets.remove(i);
        i--;
        continue;
      }
    bullets.get(i).show();
    for(int a = 0; a < asteroids.size(); a++)
    {
      if(dist(bullets.get(i).getX(), bullets.get(i).getY(), asteroids.get(a).getX(), asteroids.get(a).getY()) < 20)
        {
          bullets.remove(i);
          asteroids.remove(a);
          i--;
          break;
        }
    }
  }

  for(int i = 0; i < asteroids.size(); i++)
  {
    asteroids.get(i).move();
    asteroids.get(i).show();
    if(dist(ship.getX(), ship.getY(), asteroids.get(i).getX(), asteroids.get(i).getY()) < 20)
    {
      asteroids.remove(i);
      i--;
      hp--;
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


  if(count < 100) {count++;}
  else 
  {
    asteroids.add(new Asteroid());
    count = 0;
  }

  for(int i = 0; i < hp; i++)
  {
    if(hp == 3) {fill(80, 240, 80);}
    else if(hp == 2) {fill(240, 150, 80);}
    else if(hp == 1) {fill(240, 80, 80);}
    rect(10 * (i+1) + (60 * i), height - 30, 60, 20);
  }

  if(hp <= 0)
  {
    textAlign(CENTER, CENTER);
    textSize(40);
    fill(200, 0, 0);
    text("GAME OVER", width / 2, height / 2);
    textSize(25);
    text("Press ENTER to play again", width / 2, height * 5 / 8);
    noLoop();
  }
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
  if(key == ENTER)
  {
    setup();
    loop();
  }
}