int startX = 0;
int startY = 150;
int endX = 0;
int endY = 150;
void setup()
{
  size(300,300);
  strokeWeight(3);
  background(0);
  frameRate(5);
}
void draw()
{
  background(0);
  while (endX < 300) {
  stroke(252, 227, 3);
  endX = startX + ((int)(Math.random()*10));
  endY = startY + ((int)((Math.random()*20)-10));
  line(startY, startX, endY, endX);
  startX = endX; 
  startY = endY;
   }
}
void mousePressed()
{
startX = 0;
startY = 150;
endX = 0;
endY = 150;
}


