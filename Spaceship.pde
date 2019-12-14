class Spaceship extends Floater  
{   
    public Spaceship()
    {
    	corners = 3;
    	int[] x = {16, -8, -8};
    	xCorners = x;
    	int[] y = {0, 8, -8};
    	yCorners = y;
    	myColor = 255;
    	myCenterX = width / 2;
    	myCenterY = height / 2;
    	myDirectionX = 0;
    	myDirectionY = 0;
    	myPointDirection = 0;
    }

    public void hyperSpace()
    {
        myDirectionX = 0;
        myDirectionY = 0;
        myCenterX = (int)(Math.random() * width);
        myCenterY = (int)(Math.random() * height);
        myPointDirection = (float)(Math.random() * 360);
    }

    public float getX() {return (float)myCenterX;}
    public float getY() {return (float)myCenterY;}
    public double getDir() {return myPointDirection;}
    public double getDirX() {return myDirectionX;}
    public double getDirY() {return myDirectionY;}
}
