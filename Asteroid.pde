class Asteroid extends Floater{
  private double rotSpeed;
  public Asteroid(){
    corners = 6;
    xCorners = new int[]{-11, 7, 13, 6, -11, -5};
    yCorners = new int[]{-8, -8, 0, 10, 8, 0};
    myColor = color(255);
    myCenterX = (int)(Math.random() * 300) + 50;
    myCenterY = (int)(Math.random() * 300) + 50;
    myXspeed = (int)(Math.random() * 4) + 1;
    myYspeed = (int)(Math.random() * 4) + 1;
    myPointDirection = 0;
    rotSpeed = (int)(Math.random() * 6) + 1;
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
