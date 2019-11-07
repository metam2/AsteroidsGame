//your variable declarations here
//Spaceship ship;
Star star;
public void setup() 
{
  //ship = new Spaceship();
  star = new Star();
  size(500, 500);
  frameRate(20);
}
public void draw() 
{
  //your code here
  fill(200, 200, 200);
  rect(0, 0, width, height);

  star.rotate();
  star.show();

/*
  if(keyPressed)
  {
    if(key == 'w')
   		{ship.accelerate(0.05);}
  	if(key == 's')
  		ship.accelerate(-0.05);
  	if(key == 'd')
  		ship.turn(5);
  	if(key == 'a')
  		ship.turn(-5);
  	if(key == 'q')
  	{
  		ship.myDirectionX = 0;
  		ship.myDirectionY = 0;
  	}
  }
  ship.move();
  ship.show();
  */
}

/*
void keyReleased()
{
	if(key == 'd')
		{key = 'w';}
  if(key == 'a')
  	{key = 'w';}
}
*/