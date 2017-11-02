//your variable declarations here
Floater bob = new Spaceship();
Stars[] star;
public void setup() 
{
  background(30);
  size(300,300);
  star = new Stars[200];
  for ( int i = 0; i<star.length; i++)
  {
    star[i] = new Stars();
  }
  //your code here
}
public void draw() 
{
 background(0);
 bob.show();
 bob.move();
for (int i = 0; i <star.length; i++)
{
  star[i].show();
}
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