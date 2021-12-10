class Spaceship extends Floater  
{   
    //your code here
    public Spaceship(){
      corners = 4;
      myCenterX = 300;
      myCenterY = 300;
      myPointDirection = 0;
      myXspeed = 0;
      myYspeed = 0; //make into function to set
      xCorners = new int[]{-8,16,-8,-2};
      yCorners = new int[]{-8,0,8,0};
      myColor = color(255);
    }
    
    public void hyperspace(){
      myXspeed = 0;
      myYspeed = 0;
      myPointDirection = (Math.random()*360);
      myCenterX = (int)(Math.random()*600);
      myCenterY = (int)(Math.random()*600);
    }
    
    public void brake(){
      myXspeed = myXspeed*0.6;
      myYspeed = myYspeed*0.6;
    }
    
    public double getX(){
    return myCenterX;
    }
    
    public double getY(){
    return myCenterY;
    }
}
