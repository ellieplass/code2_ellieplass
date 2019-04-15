ArrayList<lilFish> lilfishie = new ArrayList<lilFish>();
fishPole pole;

void setup() {
  size(600, 600);
  for (int i = 0; i < 100; i++) {
    lilfishie.add(new lilFish(random(width), random(height)));
  }
}

void draw() {
  background(160, 187, 232);

    pole = new fishPole(mouseX, 0);
   pole.display();


  for (lilFish lil : lilfishie) {

    lil.display();
    lil.update();

    PVector aForce = new PVector (pole.pos.x, pole.pos.y+400);
    aForce.sub(lil.pos);
    aForce.normalize();
    aForce.mult(0.01 * pole.mass);
    lil.applyForce(aForce);
  
  }
  
 
}
