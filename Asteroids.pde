class Asteroid extends Floater {

  private double rotSpeed;

  public Asteroid() {
    rotSpeed = (int)(Math.random()*5)+1;
    corners = 6;
    myCenterX = (Math.random()*600);
    myCenterY = (Math.random()*600);
    xCorners = new int[]{54,50,-2,-8,0,20};
    yCorners = new int[]{8,20,28,16,-10,-14};
    myPointDirection = (int)(Math.random()*181);
    myXspeed = (int)(Math.random()*12)-6;
    myYspeed = (int)(Math.random()*12)-6;
    myColor = color(108, 108, 108, 130);
  }
  
  public void move(){
    turn(rotSpeed);
    super.move();
  }
  
  public double getX(){
    return myCenterX;
  }
  
  public double getY(){
    return myCenterY;
  }
  
}
