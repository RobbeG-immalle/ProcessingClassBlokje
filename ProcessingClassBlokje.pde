Blokje b1 = new Blokje(10,10,10,10);
Blokje b2 = new Blokje(20,20,10,10);
void setup()
{
  size(400,400);
  frameRate(30);
}
void draw()
{
  clear();
  background(204);
  b1.Update();
  b2.Update();
  
}
class Blokje
{
  float xpos,ypos,hoogte,breedte;
  Blokje(float y,float x, float h, float w)
  {
     xpos = x;
     ypos = y;
     hoogte = h;
     breedte = w;
  }  
     void Update()
  {
    if(mousePressed == true && mouseButton == LEFT)
  {
    xpos += 1;
    ypos += 1;
  }
  if(mousePressed == true && mouseButton == RIGHT)
  {
    hoogte += 1;
    breedte += 1;
  }
  rect(xpos,ypos,hoogte,breedte);
  }
}