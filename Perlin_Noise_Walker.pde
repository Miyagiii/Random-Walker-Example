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

  void walk(float t, float t2)
  {

    float choice = noise(t);//Selects if the walker left or right
    choice = map(choice,0,1,0,width);//Maps the a new range for the values
    
    float choice2 = noise(t2);//Selects if the walker goes up or down
    choice2 = map(choice2,0,1,0,height);//Maps a new range for the values
    
    x = choice;
    y = choice2;
    
    x = constrain(x, 0, width-1);//stops the walker going off of the edge
    y = constrain(y, 0, height-1);
  }
}