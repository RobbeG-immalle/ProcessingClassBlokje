class Blokje {
  int oBreedte;
  int oHoogte;
  int b;
  int h;
  int x;
  int y;
  
  int xRichting = 1;
  int yRichting = 1;
  
  Blokje(int x, int y, int hoogte, int breedte) 
   {
    b = breedte;
    h = hoogte;
    oBreedte = b;
    oHoogte = h;
    this.x = x;
    this.y = y;
   }
    void draw() 
   {
    rect(x, y, b, h);
   }
     void update()
   {
    x += xRichting;
    y += yRichting;
   }
    void grow ()
   {
      b += 1;
      h += 1;
   }
    void resetSize() 
  {
      b = oBreedte;
      h = oHoogte;
  }
  void onder() {
    xRichting = 0;
    yRichting = 1;
  }
  
  void links() {
    xRichting = -1;
    yRichting = 0;
  }
  
  void rechts() 
  {
    xRichting = 1;
    yRichting = 0;
  }
 void boven() 
  {
    xRichting = 0;
    yRichting = -1;
  }
 void goManual(int xRichting, int yRichting) 
  {
    this.xRichting = xRichting;
    this.yRichting = yRichting;
  }
}