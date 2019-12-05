class Bullet extends Floater
{
	public Bullet(double coordX, double coordY, double direction)
	{
		myCenterX = coordX;
		myCenterY = coordY;
		corners = 4;
    	int[] x = {-4, 4, 4, -4};
    	xCorners = x;
    	int[] y = {1, 1, -1, -1};
    	yCorners = y;
    	myColor = 255;
    	myDirectionX = 0;
    	myDirectionY = 0;
    	myPointDirection = direction;

    	this.accelerate(15);
	}
}