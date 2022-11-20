Star[] nightSky = new Star[220];
Spaceship bob = new Spaceship();

public void setup() 
{
  size(400, 400);
  for(int i = 0; i < nightSky.length; i++){
    nightSky[i] = new Star();
  }
}
public void draw() 
{
  background(0);
  for(int i = 0; i < nightSky.length; i++){
    nightSky[i].show();
  }
  bob.move();
  bob.show();
 
}
public void keyPressed(){
  if(key == 'h'){
    bob.hyperSpace();
    
  }
  if(key == 'a'){
    bob.move();
    bob.accelerate(3);
    
  }
  if(key == '4'){
    bob.turn(-10);
  }
  if(key == '6') {
    bob.turn(10);
  }
}
