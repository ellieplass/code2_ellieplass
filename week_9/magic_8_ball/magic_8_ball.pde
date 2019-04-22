PImage ball;
JSONArray data;
PShape Eightball;
float rotations = radians(mouseX);

void setup() {
  size(600, 600, P3D);
  background(0);
  ball = loadImage("8ball.jpg");
  Eightball = createShape(SPHERE, 80);
  Eightball.setTexture(ball);
  Eightball.setStroke(false);
}

void draw() {

  data = loadJSONArray("data.json");
  //JSONArray fortunes = data.getString("fortunes");
  fill(255);
  pushMatrix();
  float y = noise(500, 50, 300);
  translate(300, 300, y);
  rotateY(radians(mouseX));
  rotateX(radians(mouseY));
  //String fortune = data.getString(int(random(data.size()-1)));
  //text(fortune, 300, 400);
  noStroke();
  lights();
  shape(Eightball);
  popMatrix();
  beginShape();
  vertex(140, 20);
  vertex(430, 20);
  vertex(290, 100);
  endShape();
  textSize(20);
  fill(0);
  text("The Magic Eightball", 200, 50);
  if(mousePressed){
    String fortune = data.getString(int(random(5)));
      text(fortune, 300, 400);
  }
}
