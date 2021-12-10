//your variable declarations here
Spaceship bob = new Spaceship();
Star [] guy = new Star[200];
ArrayList <Asteroid> rocks = new ArrayList <Asteroid> ();

public void setup() 
{
  //your code here
  size(600, 600);
  for (int i = 0; i < guy.length; i++) {
    guy[i] = new Star();
  }
  for (int i = 0; i < 20; i++) {
    rocks.add(new Asteroid());
  }
}
public void draw() 
{
  background(0);
  bob.move();
  bob.show();
  for (int i = 0; i < guy.length; i++) {
    guy[i].show();
  }
  for (int i = 0; i < rocks.size(); i++) {
    rocks.get(i).move();
    rocks.get(i).show();
    float d = dist((float)bob.getX(), (float)bob.getY(), (float)rocks.get(i).getX(), (float)rocks.get(i).getY());
    if (d < 25) {
      rocks.remove(i);
    }
  }
 
  if (rocks.size() < 10)
    rocks.add(new Asteroid());
}

public void keyPressed() {
  if (key == 'A' || key == 'a') {
    bob.turn(-10);
  }
  if (key == 'D' || key == 'd') {
    bob.turn(10);
  }
  if (key == 'W' || key == 'w') {
    bob.accelerate(0.6);
  }
  if (key == 'S' || key == 's') {
    bob.accelerate(-0.6);
  }
  if (key == ' ') {
    bob.hyperspace();
  }
  if (key == 'B' || key == 'b') {
    bob.brake();
  }
}

