class Stars //note that this class does NOT extend Floater
{
  int myX;
 int myY;
  int mySize;
  int myColor;
  Stars()
  {
    myX = (int)(Math.random()*300);
    myY = (int)(Math.random()*300);
    mySize = (int)(Math.random()*5);
    myColor = 250+mySize;
  }
  void show()
  {
    ellipse(myX, myY, mySize, mySize);
    fill(myColor);
  }
  //your code here
}