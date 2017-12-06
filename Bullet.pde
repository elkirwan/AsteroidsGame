class Bullet extends Floater
{
 private int rotSpeed;
 public void setX(int x){myCenterX = x;} 
 public int getX(){return (int)myCenterX;}   
 public void setY(int y){myCenterY = y;}   
 public int getY(){return (int)myCenterY;}   
 public void setDirectionX(double x){myDirectionX = x;}   
 public double getDirectionX(){return myDirectionX;}   
 public void setDirectionY(double y){myDirectionY = y;}   
 public double getDirectionY(){return myDirectionY;}   
 public void setPointDirection(int degrees){myPointDirection = degrees;}  
 public double getPointDirection(){return myPointDirection;} 
  //public Bullet (Spaceship bob)
  public Bullet (Spaceship bob)
  {
    myColor = #67FAD6;
    double myCenterX = bob.getX();
    double myCenterY = bob.getY();
    double myPointDirection = bob.getPointDirection();
    double dRadians = myPointDirection*(Math.PI/180);
    double myDirectionX = 5*Math.cos(dRadians) + bob.getDirectionX();
    double myDirectionY = 5*Math.cos(dRadians) + bob.getDirectionY();
    
     }
     
    public void show()
     {
       fill(myColor);
       ellipse(bob.getY(), bob.getY(),10,10);
     }
}