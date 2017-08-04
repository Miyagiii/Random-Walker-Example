//Coded by TheSpaceCowboy
//Date: 04/08/17

class Walker
{

  float x, y;//Every walker needs an X and a Y

  Walker()//Constructor for the walker class
  {

    x = width/2;//Puts the walker in the middle
    y = height/2;
    
  }

  Walker(float xCord, float yCord)//Constructor overload for accepting a starting position
  {

    x = xCord;//Sets the x cord to the x input
    y = yCord;//Sets the y cord to the y input
    
  }
  void display()
  {
    float distance = dist(x, y, 0, y);//Stores the distance from the edge of the screen
    
    if ( x > width/2)
    {
      
      constrain(distance, 0, 255);//Constrains the distance between 0 and 255 to stop the output being bigger than 255
      
      stroke(distance, 0, 0);//Sets the colour to the distance from the right of the screen
    
  } else if (x < width/2)
    
    {
      
      constrain(distance, 0, 255);//Constrains the distance between 0 and 255 to stop the output being bigger than 255
      
      stroke(0, 0, distance);//Sets the colour to the distance from the right of the screen
    
  }
    
    point(x, y);//Draws the walker
  }

  void walk()
  {

    int choice = int(random(4));//Selects if the walker goes up down left or right
    
    if (choice == 0)
    {
      
      x++;//Moves right
      
    } else if (choice == 1) {
      
      x--;//Moves left
      
    } else if (choice == 2) {
      
      y++;//Moves up
      
    } else {
      
      y--;//Moves Down
      
    }
    
    x = constrain(x, 0, width-1);//stops the walker going off of the edge
    y = constrain(y, 0, height-1);
  }
}