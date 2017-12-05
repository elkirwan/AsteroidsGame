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
  public Bullet(Spaceship bob)
  {
    double myCenterX = Spaceship.getX();
    double myCenterY = Spaceship.getY();
    double myPointDirection = Spaceship.getPointDirection();
    double dRadians = myPointDirection*(Math.PI/180);
    int myDirectionX = 5*Math.cos(dRadians) + Spaceship.getDirectionX();
    int myDirectionY = 5*Math.cos(dRadians) + Spaceship.getDirectionY();
    
     }
     public void show()
     {
       ellipse(5,5,5,5);
     }
}