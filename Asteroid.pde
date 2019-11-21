class Asteroid extends Floater
{
	private float rotSpeed;
	public Asteroid()
	{
		rotSpeed = (float)(Math.random() * 4 - 2);
		int numVertex = (int)(Math.random() * 3 + 1);

		int[] x = new int[numVertex];
		for(int i = 0; i < numVertex; i++)
		{
			x[i] = (int)(Math.random() * 100);
			//makes half the coords negative
			if(i > numVertex / 2) {x[i] *= -1;}
		}

		int[] y = new int[numVertex];
		for(int i = 0; i < numVertex; i++)
		{
			//??????
			//
			y[i] = (int)(cos((float)(Math.random() * 2 * PI / (float)numVertex) + (i * 2 * PI / (float)numVertex)) * 100);
		}
		myCenterX = 200;
		myCenterY = 200;
	}
}