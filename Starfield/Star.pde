class Star
{
  float x;
  float y;
  float z;
  float xVelocity;
  float yVelocity;
  float velocity;
  float diameter;
  float theta;
  
  float diameterMultiplier = 3;
  float zIncrementer = 0.05;
  
  Star()
  {
    setVars();
  }
  
  void setVars()
  {
    x = width/2;
    y = height/2;
    z = 0;
    xVelocity = 0;
    yVelocity = 0;
    diameter = 0;
    theta = random(0,6.28);
    velocity = map(mouseX,0,width,5,15);
    xVelocity = cos(theta)*velocity;
    yVelocity = sin(theta)*velocity;
    zIncrementer = map(xVelocity,-15,15,0.03,0.07);
    diameterMultiplier = map(yVelocity,-15,15,1,2);
  }
  
  void updateVars()
  {
    velocity = map(mouseX,0,width,0,5);
    x += xVelocity;
    y += yVelocity;
    z += zIncrementer;
    diameter = z*diameterMultiplier;
  }
  
  void move()
  {
    updateVars();
    noStroke();
    ellipseMode(CENTER);
    ellipse(x,y,diameter,diameter);
    limitOutCheck();
  }
  
  void limitOutCheck()
  {
    if(x>(width+50) || x<(-width-50) || y>(height+50) || y<(-height-50))
    {
      setVars();
    }
  }
}