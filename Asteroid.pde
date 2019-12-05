class Asteroid extends Floater
{
	private int rotSpeed;
	public Asteroid()
	{
		rotSpeed = (int)(Math.random() * 40 - 20);
		corners = (int)(Math.random() * 7 + 3);

		xCorners = new int[corners];
		yCorners = new int[corners];
		int xRadius = (int)(Math.random() *10 + 10);
		int yRadius = (int)(Math.random() *10 + 10);
		for(int i = 0; i < corners; i++)
		{
			xRadius += (int)(Math.random() * 9 - 4);
			yRadius += (int)(Math.random() * 9 - 4);
			xCorners[i] = (int)(cos(2 * PI * i / corners) * xRadius);
			yCorners[i] = (int)(sin(2 * PI * i / corners) * yRadius);
		}
			//y[i] = (int)(cos((float)(Math.random() * 2 * PI / (float)corners) + (i * 2 * PI / (float)corners)) * 10);
			
		myDirectionX = (int)(Math.random() * 9 - 4);
		myDirectionY = (int)(Math.random() * 9 - 4);
		myCenterX = (int)(Math.random() * width);
		myCenterY = (int)(Math.random() * height);
		myColor = (int)(Math.random() * 100 + 100);

	}


	public void move()
	{
		super.turn(rotSpeed);
		super.move();
	}

	public float getX() {return (float)myCenterX;}
	public float getY() {return (float)myCenterY;}
}