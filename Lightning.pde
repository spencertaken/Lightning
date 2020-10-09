Die bob; 

void setup()
{
  size(700,500);
  background(200); 
  noLoop();
}
void draw()
{
  background(200);
  double totalDotNum = 0; 
  for(int p = 0; p <= 500; p+=50) {
    for(int i = 0; i <= 500; i+=50) {
      bob = new Die(i,p);
      bob.roll();
      bob.show(); 
      totalDotNum = totalDotNum+bob.numDot; 
    }
  }
  text("The sum of your roll is " + (int)totalDotNum + "!", 553.5, 50);
  text("The average of your roll is ", 555, 150);
  text(totalDotNum/110 + "!", 570, 165); 
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int myX, myY, ranDot, numDot; 
  
  Die(int x, int y) //constructor
  {
    myX = x; 
    myY = y; 
    ranDot = ((int)(Math.random()*6)+1); 
    numDot = 1; 
  }
  void roll()
  { 
    if (ranDot == 1) { //if it's 1 then do 1 dot
      numDot = 1;
      System.out.println(numDot); 
    }
    else if (ranDot == 2) { //if it's 2 then do 2 dots
      numDot = 2;
      System.out.println(numDot); 
    }
    else if (ranDot == 3) { //if it's 3 then do 3 dots
      numDot = 3;
      System.out.println(numDot); 
    }
    else if (ranDot == 4) { //if it's 4 then do 4 dots
      numDot = 4;
      System.out.println(numDot); 
    }
    else if (ranDot == 5) { //if it's 5 then do 5 dots
      numDot = 5;
      System.out.println(numDot); 
    }
    else if (ranDot == 6) { //if it's 6 then do 6 dots
      numDot = 6;
      System.out.println(numDot); 
    }
  }
  void show()
  {
    fill(255); 
    stroke(0); 
    strokeWeight(3);
    rect(myX,myY,50,50);
    //NOW FOR THE GOOD DOTS STUFF
    fill(0); 
    if (numDot == 1) {
      ellipse(myX+25,myY+25,8,8); 
    }
    else if (numDot == 2) {
      ellipse(myX+13,myY+13,8,8);
      ellipse(myX+38,myY+38,8,8);
    }
    else if (numDot == 3) {
      ellipse(myX+25,myY+25,8,8);
      ellipse(myX+13,myY+13,8,8);
      ellipse(myX+38,myY+38,8,8);
    }
    else if (numDot == 4) {
      ellipse(myX+13,myY+13,8,8);
      ellipse(myX+13,myY+38,8,8);
      ellipse(myX+38,myY+13,8,8);
      ellipse(myX+38,myY+38,8,8);
    }
    else if (numDot == 5) {
      ellipse(myX+25,myY+25,8,8); 
      ellipse(myX+13,myY+13,8,8);
      ellipse(myX+13,myY+38,8,8);
      ellipse(myX+38,myY+13,8,8);
      ellipse(myX+38,myY+38,8,8);
    }
    else if (numDot == 6) {
      ellipse(myX+13,myY+13,8,8);
      ellipse(myX+13,myY+26,8,8);
      ellipse(myX+13,myY+38,8,8);
      ellipse(myX+38,myY+13,8,8);
      ellipse(myX+38,myY+26,8,8);
      ellipse(myX+38,myY+38,8,8);
    }
  }
}
