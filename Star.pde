class Star //note that this class does NOT extend Floater
{
  //your code here
  private int myX,myY,mySize,myColor;
  public Star(){
    myX = (int)(Math.random()*601);
    myY = (int)(Math.random()*601);
    mySize = (int)(Math.random()*8)+1;
    myColor= color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
  }
  public void show(){
    noStroke();
    fill(myColor);
    ellipse(myX,myY,mySize,mySize);
  }
}
