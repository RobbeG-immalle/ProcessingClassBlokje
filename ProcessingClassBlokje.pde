Blokje b1 = new Blokje(20,50,10,10);
Blokje b2 = new Blokje(20,20,10,10);
void setup()
{
  size(400,400);
  frameRate(30);
}
void draw()
{
  clear();
  background(200);
  b1.draw();
  b2.draw();
  
  
  if(mousePressed && mouseButton == LEFT) {
    b1.update();
    b2.update();
    b1.kleurVeranderen();
  }
  if(mousePressed && mouseButton == RIGHT) {
    b1.grow();
    b2.grow();
  }
    if(keyPressed && key == 'r') {
     b1.resetSize();
     b2.resetSize();
     print("size reset\n");
    }
   if(keyPressed && key == CODED) {
    switch(keyCode) {
      
      case UP:
        println("naar boven\n");
        b1.boven();
        b2.boven();
        break;
      
      case DOWN:
        println("naar rechts\n");
        b1.onder();
        b2.onder();
        break;
      
      case LEFT:
        println("Naar links\n");
        b1.links();
        b2.links();
        break;
      
      case RIGHT:
        println("naar onder\n");
        b1.rechts();
        b2.rechts();
        break;
      
      default:  
        b1.goManual(1, 1);
        b2.goManual(1, 1);
        break;
    }
   }
  }