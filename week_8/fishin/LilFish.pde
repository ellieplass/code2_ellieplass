class lilFish {
  PVector pos;
  PVector velo;
  PVector acc;
  float mass;
  float size;

  lilFish(float x, float y) {
    pos = new PVector(x, y);
    velo = new PVector(0, 0);
    acc = new PVector(0, 0);
    mass = random(1, 7);
    size = 3 * mass;
  }

  void update() {
    velo.add(acc);
    pos.add(velo);
    acc.mult(0);
  }

  void display() {

    noStroke();
    ;
    fill(237, 164, 151);
    ellipse(pos.x, pos.y, size+10, 15);
    triangle(pos.x, pos.y, pos.x+20, pos.y-20, pos.x+20, pos.y+20);
    fill(0);
    ellipse(pos.x-5, pos.y, 2, 2);
  }

  void applyForce(PVector force) {
    PVector f = PVector.div(force, mass);
    acc.add(f);
  }
}
