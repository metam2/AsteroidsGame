class Asteroid extends Floater
{
	private float rotSpeed;
	public Asteroid()
	{
		rotSpeed = (float)(Math.random() * 4 - 2);
		int numVertex = (int)(Math.random() * 3 + 3);

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
			//System.out.println((int)(cos((float)(Math.random() * 2 * PI / (float)numVertex) + (i * 2 * PI / (float)numVertex)) * 100));
			y[i] = (int)(cos((float)(Math.random() * 2 * PI / (float)numVertex) + (i * 2 * PI / (float)numVertex)) * 100);
			
		}
		printArray(x);
		corners = numVertex;
		xCorners = x;
		yCorners = y;
		stroke(255);
		fill(255);
		beginShape();
    for (int nI = 0; nI < numVertex; nI++)
    {
      vertex(xCorners[nI] + 100, yCorners[nI] + 100);
    }
    endShape(CLOSE);
		myCenterX = 200;
		myCenterY = 200;
		myColor = 255;
		/*System.out.println(x);
		System.out.println(y);*/

	}

	private void printArray(int[] arr)
	{
		System.out.println();
		System.out.print("[");
		for(int i = 0; i < arr.length; i++)
		{
			System.out.print(arr[i] + ", ");
		}
	}
}