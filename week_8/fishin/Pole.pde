class fishPole {
  PVector pos;
  float mass;
  float size;

  fishPole(float x, float y) {
    pos = new PVector(x, y);
    //posb = new PVector(a, b);
    mass = random(1, 5);
    size = 20*mass;
  }

  void display() {
    strokeWeight(4);

    fill(160, 156, 155);
    rect(pos.x, pos.y, 2, 400);
    fill(232, 64, 34);
    ellipse(pos.x, pos.y+400, 50, 50);
   
  }
}
