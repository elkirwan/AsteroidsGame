//your variable declarations here
Floater bob = new Spaceship();
//Asteroid[] rock;
ArrayList <Asteroid> rocklist;
Stars[] star;
Floater shell = new Bullet(Spaceship.bob);
public void setup() 
{
  background(30);
  size(300,300);
  star = new Stars[200];
  for ( int i = 0; i<star.length; i++)
  {
    star[i] = new Stars();
  }
  //rock = new Asteroid[8];
  rocklist = new ArrayList <Asteroid>();
  for (int i = 0; i<8; i++)
  {
     Asteroid rock = new Asteroid();
     rocklist.add(rock);
  }
 //for (int i = 0; i<rocklist.size(); i++);
 //dist(rocklist.get(i).getX(),rocklist.get(i).getY(),bob.getX(), bob.getY());
  //rocklist = new ArrayList <Asteroid>();
  //Asteroid otherrock = new Asteroid();
  //rocklist.add(otherrock);
  //Asteroid rock = new Asteroid();
  //rocklist.add(rock);
  
 
  
  //your code here
}
public void draw() 
{
 background(0);
 
for (int i = 0; i <star.length; i++)
{
  star[i].show();
}
for (int i = 0; i< rocklist.size(); i++)
{
  rocklist.get(i).show();
  rocklist.get(i).move();
  if (dist( rocklist.get(i).getX(),rocklist.get(i).getY(),bob.getX(), bob.getY()) <17)
  {
    rocklist.remove(i);
  }
}


 bob.show();
 bob.move();
 shell.show();
  //your code here
}
public void keyPressed()
{
  if (key == 'j'){

    bob.accelerate(2);
   // bob.move();
    }
    else if (key =='g'){
      bob.turn(30);
    }
    else if ( key == 'f')
    {
      bob.turn(-30);
    }
    else if (key == 'h')
   {
     bob.setDirectionX(0);
     bob.setDirectionY(0);
     bob.setX((int)(Math.random()*200));
     bob.setY((int)(Math.random()*200));
     bob.setPointDirection((int)(Math.random()*360)); 
    }
    
    
}