class Star //note that this class does NOT extend Floater
{
  //your code here
  private int radius1, radius2, radius3, radius4;
  private int myX, myY, r, g, b;
  private float angle, angVelocity;

  public Star()
  {
  	int radius = (int)(Math.random() * 4 + 8);
  	myX = (int)(Math.random() * width);
  	myY = (int)(Math.random() * height);
  	angle = 0;
    angVelocity = (float)(Math.random() * 0.3 + 0.05);
    radius1 = (int)(Math.random() * 0.5 * radius) + (int)(0.5 * radius);
    radius2 = (int)(Math.random() * radius) ;
    radius3 = (int)(Math.random() * 0.8 * radius) + (int)(0.2 * radius);
    radius4 = (int)(Math.random() * 0.5 * radius)  + (int)(0.5 * radius);
    r = (int)(Math.random() * 120 + 160);
    g = (int)(Math.random() * 120 + 160);
    b = (int)(Math.random() * 120 + 160);
  }

  public void show()
  {
    stroke(r, g, b, 80);

  	beginShape();
    vertex(myX + (cos(angle) * radius1), myY + (sin(angle) * radius1));
  	vertex(myX + (cos(angle + (PI / 2)) * radius2), myY + (sin(angle + (PI / 2)) * radius2));
  	vertex(myX + (cos(angle + PI) * radius3), myY + (sin(angle + PI) * radius3 / 2));
  	vertex(myX + (cos(angle + (3 * PI / 2) * radius4)), myY + (sin(angle + (3 * PI / 2)) * radius4));
  	endShape(CLOSE);

  	angle += 1.6;
  	noFill();
  	beginShape();
    vertex(myX + (cos(angle) * radius1), myY + (sin(angle) * radius1));
    vertex(myX + (cos(angle + (PI / 2)) * radius2), myY + (sin(angle + (PI / 2)) * radius2));
    vertex(myX + (cos(angle + PI) * radius3), myY + (sin(angle + PI) * radius3 / 2));
    vertex(myX + (cos(angle + (3 * PI / 2) * radius4)), myY + (sin(angle + (3 * PI / 2)) * radius4));
    endShape(CLOSE);

  	angle-= 1.6;
    
  }

  public void rotate()
  {
  	angle += angVelocity;
  }

  public int getX() {return myX;}

  public int getY() {return myY;}

}
