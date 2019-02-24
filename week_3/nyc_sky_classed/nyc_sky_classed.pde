int num_shapes = 30;

Builds[] build = new Builds[num_shapes];


void setup() {
  size(500, 500);
  background(1, 66, 163);
  for (int i = 0; i < num_shapes; i++) {
       build[i] = new Builds(i);
  }
}

void draw () {
   for (int i = 0; i < num_shapes; i++) {
       build[i].display();
  }
  
  //stars
  noStroke();
  fill(219, 215, 13);
  ellipse(random(width), random(0, 300), 2, 2);
}
