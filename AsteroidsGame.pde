//your variable declarations here
Spaceship bob = new Spaceship();
Star [] guy = new Star[100];

public void setup() 
{
  //your code here
  size(600,600);
  for(int i = 0; i < guy.length; i++){
    guy[i] = new Star();
  }
}
public void draw() 
{
  background(255);
  bob.move();
  bob.show();
  for(int i = 0; i < guy.length; i++){
    guy[i].show();
  }
}

public void keyPressed(){
  if(key == 'W' || key == 'w'){
  bob.turn(-10);
  }
  if(key == 'S' || key == 's'){
    bob.turn(10);
  }
  if(key == 'D' || key == 'd'){
    bob.accelerate(0.6);
  }
  if(key == 'A' || key == 'a'){
    bob.accelerate(-0.6);
  }
  if(key == ' '){
    bob.hyperspace();
  }
  if(key == 'B' || key == 'b') {
    bob.brake();
  }
}
