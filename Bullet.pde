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

    //returns true if the bullet is going off screen, otherwise false
    public boolean moveNoLoop()
    {
            
        //change the x and y coordinates by myDirectionX and myDirectionY       
        myCenterX += myDirectionX;    
        myCenterY += myDirectionY;     

        if(myCenterX >width)
        {     
          return true;    
        }    
        else if (myCenterX<0)
        {     
          return true;    
        }    
        if(myCenterY >height)
        {    
          return true;    
        } 
        
        else if (myCenterY < 0)
        {     
          return true;    
        }  

        return false;
    }

    public float getX() {return (float)myCenterX;}
    public float getY() {return (float)myCenterY;}

}