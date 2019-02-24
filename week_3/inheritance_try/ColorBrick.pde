class ColorBrick extends Brick {
 
  
  ColorBrick(float x, float y, float w, float h) {
    super(x, y, w, h);
  }

  void display() {
    fill(random(255), random(255), random(255));
     rectMode(CORNER);
    stroke(255);
    rect(x, y, w, h);
  }
}
