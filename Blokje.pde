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