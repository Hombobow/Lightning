void setup()
{
  size(800,800);
  background(0);
  frameRate(5);
}

void draw()
{
  frameRate(20);
  fill(0,0,0,15);
  rect(0,0,800,800);
}
void mousePressed()
{
  frameRate(5);
  strokeWeight(7);
  double chance = Math.random();
  if(chance > 0.5){
    stroke(255,255,255);
  }
  else if(chance < 0.5){
    stroke((int) (Math.random() * 256),(int) (Math.random() * 256),(int) (Math.random() * 256));
  }
  int startX = (int) (Math.random() * 801);
  int startY = 0;
  int endX = 0;
  int endY = 0;
  while(endY < 800){
    endX = startX;
    int addX = (int) (Math.random() * 200 - 100);
    if(endX + addX < 0 || endX + addX > 800){
      endX -= addX;
    } 
    else{
      endX += addX;
    }
    endY = startY + (int) (Math.random() * 100);
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
  }
}
