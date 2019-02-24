int num_shapes = 30;
color[]col = new color[num_shapes];
void setup() {
  size(500, 500);
  background(1, 66, 163);
  for (int i = 0; i < num_shapes; i++) {
    col[i] = color(random(0, 50));
    fill(col[i]);
    float height1 = random(40, 200);
    rect(50*i, 500-(height1), 50, height1);
  }
}

void draw () {
  noStroke();
  fill(219, 215, 13);
  ellipse(random(width), random(0, 300), 2, 2);
}
