float theta = 0;

void setup() {
  size(800, 600);
}

void draw() {
  background(190, 221, 226);
  strokeWeight(1);
  textSize(20);
  text("Hello, I am bear! This is my arctic home!", 400, 200);
  fill(255);
      //ellipse(400, 500, 200, 300);
rect(0, 500, 800, 100);
   triangle(155, 250, 10, 500, 360, 500);
      triangle(355, 250, 110, 500, 460, 500);
   triangle(455, 250, 210, 500, 560, 500);
   triangle(650, 250, 500, 500, 800, 500);


  ellipse(356, 366, 50, 70);
  ellipse(446, 366, 50, 70);
   fill(0);
  ellipse(361, 371, 40, 40);
  ellipse(441, 371, 40, 40);
    fill(255);

  ellipse(400, 500, 200, 300);
  ellipse(375, 470, 30, 30);
  ellipse(426, 470, 30, 30);

  translate(width/2, height);
  branch(100);
  println(mouseX + " " + mouseY);
  
}

void branch(float len) {
  line(0, 0, 0, -len);
  fill(0);
  ellipse(0, 0, -len, len);
   
  theta = map(800, 0, width, 5, 40);
  translate(0, -len);
  len *= map(240, 0, height, 0.2, 0.7);

  if (len > 2) {
    pushMatrix();
    rotate(radians(theta));
    branch(len);
    popMatrix();

    pushMatrix();
    rotate(radians(-theta));
    branch(len);
    popMatrix();
  }


}
