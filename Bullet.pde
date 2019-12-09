class Bullet extends Floater
{
	public Bullet()
	{
		myCenterX = ship.getX();
		myCenterY = ship.getY();
		corners = 4;
    	int[] x = {-4, 4, 4, -4};
    	xCorners = x;
    	int[] y = {1, 1, -1, -1};
    	yCorners = y;
    	myColor = 255;
    	myPointDirection = ship.getDir();
    	double dRadians = myPointDirection*(Math.PI/180);
    	myDirectionX = 15 * Math.cos(dRadians) + ship.getDirX();
    	myDirectionY = 15 * Math.sin(dRadians) + ship.getDirY();
	}

    public float getX() {return (float)myCenterX;}
    public float getY() {return (float)myCenterY;}
}