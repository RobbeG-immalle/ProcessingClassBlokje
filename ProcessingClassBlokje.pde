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