//your variable declarations here
Spaceship ship;
ArrayList <Star> stars;
public void setup() 
{
  ship = new Spaceship();
  stars = new ArrayList <Star>();

  for(int i = 0; i < 20; i++)
    {stars.add(new Star());}
  size(500, 500);
  frameRate(20);
}
public void draw() 
{
  //your code here
  fill(0, 0, 0);
  rect(0, 0, width, height);

  for(int i = 0; i < stars.size(); i++)
  {
    stars.get(i).rotate();
    stars.get(i).show();
  }

  if(keyPressed)
  {
    if(key == 'w')
   		{ship.accelerate(0.1);}
  	if(key == 's')
  		ship.accelerate(-0.1);
  	if(key == 'd')
  		ship.turn(5);
  	if(key == 'a')
  		ship.turn(-5);
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
}
