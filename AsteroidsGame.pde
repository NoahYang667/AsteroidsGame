Star[] nightSky = new Star[220];
Spaceship bob = new Spaceship();
ArrayList <Asteroid> man = new ArrayList <Asteroid>();
ArrayList <Bullet> shots = new ArrayList <Bullet>();

public void setup()
{
  size(400, 400);
  for (int i = 0; i < nightSky.length; i++) {
    nightSky[i] = new Star();
  }
  for (int j = 0; j < 10; j++) {
    man.add(new Asteroid());
  }
}
public void draw()
{
  background(0);
  for (int i = 0; i < nightSky.length; i++) {
    nightSky[i].show();
  }
  bob.move();
  bob.show();
  for (int i = 0; i < man.size(); i++) {
    man.get(i).show();
    man.get(i).move();
    float d = dist((float)bob.getX(), (float)bob.getY(), (float)man.get(i).getX(), (float)man.get(i).getY());
    if (d < 20)
      man.remove(i);
  }
  for (int i = 0; i < shots.size(); i++) {
     shots.get(i).move();
      shots.get(i).show();
  }
  for (int i = 0; i < shots.size(); i++) {
    for (int j = 0; j < man.size(); j++) {
    
      float e = dist((float)shots.get(i).getX(), (float)shots.get(i).getY(), (float)man.get(j).getX(), (float)man.get(j).getY());
      if (e < 15) {
        shots.remove(i);
        man.remove(j);
        break;
      }
    }
  }
}
public void keyPressed() {
  if (key == 'h') {
    bob.hyperSpace();
  }
  if (key == 'a') {
    bob.move();
    bob.accelerate(3);
  }
  if (key == '4') {
    bob.turn(-10);
  }
  if (key == '6') {
    bob.turn(10);
  }
  if (key == 's') {
    shots.add(new Bullet(bob));
  }
}
