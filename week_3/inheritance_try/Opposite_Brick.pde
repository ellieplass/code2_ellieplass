class op_brick extends Brick {
 boolean active;
 
  op_brick(float x, float y, float w, float h) {
    super(x, y, w, h);
    active = true;
  }
  
  void display(){
    rectMode(CORNER);
    stroke(255);
    fill(0);
    rect(x, y, w, h); 
  }
  
}
