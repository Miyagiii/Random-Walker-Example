//Coded by TheSpaceCowboy
//Date: 04/08/17

Walker w,w2;//Stores the object "Walker" in the variable W

void setup()
{
  
  size(630,640);//Sets the size of the window
  
  w = new Walker();//Intialises the Walker Object
  w2 = new Walker();
}

void draw()
{
  w.display();//Display the Walker Obkect
  w.walk();//Moves the random walker
  
  w2.display();//Display the Walker Obkect
  w2.walk();//Moves the random walker
}