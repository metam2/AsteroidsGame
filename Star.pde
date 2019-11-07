class Star //note that this class does NOT extend Floater
{
  //your code here
  private int size;
  private int myX;
  private int myY;
  private float angle;

  public Star()
  {
  	size = 100;
  	myX = 200;
  	myY = 200;
  	angle = 0;
  }

  public void show()
  {
  	beginShape();
  	vertex(myX + (cos(angle) * size), myY + (sin(angle) * size));
  	vertex(myX + (cos(angle + (PI / 2)) * size), myY + (sin(angle + (PI / 2)) * size));
  	vertex(myX + (cos(angle + PI) * size), myY + (sin(angle + PI) * size / 2));
  	vertex(myX + (cos(angle + (3 * PI / 2) * size)), myY + (sin(angle + (3 * PI / 2)) * size));
  	endShape(CLOSE);

  	angle += 1.62;
  	noFill();
  	beginShape();
  	vertex(myX + (cos(angle) * size), myY + (sin(angle) * size));
  	vertex(myX + (cos(angle + (PI / 2)) * size), myY + (sin(angle + (PI / 2)) * size));
  	vertex(myX + (cos(angle + PI) * size), myY + (sin(angle + PI) * size / 2));
  	vertex(myX + (cos(angle + (3 * PI / 2) * size)), myY + (sin(angle + (3 * PI / 2)) * size));
  	endShape(CLOSE);

  	angle-= 1.62;

/*
  	fill(20);
  	ellipse(myX + (cos(angle) * size), myY + (sin(angle) * size), 10, 10);
  	fill(100);
  	line(myX, myY, myX + (cos(angle + (PI / 2) * size)), myY + (sin(angle + (PI / 2)) * size));
  	ellipse(myX + (cos(angle + (PI / 2)) * size), myY + (sin(angle + (PI / 2)) * size), 10, 10);
  	*/
  }

  public void rotate()
  {
  	angle += 0.1;
  }
}
