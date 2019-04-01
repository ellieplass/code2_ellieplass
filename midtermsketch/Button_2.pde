class Button2 {
  int x = 420;
  int y = 200;
  color button2BG = color(119, 180, 255);
  String button2Text = "button 2 pressed!";
  int buttonSize = 125;

  Button2() {
  }


  void display() {
    fill(255);
    ellipse(x, y, buttonSize, buttonSize);
  }

  void pressed() {
    background(button2BG);
    fill(252, 253, 255);
    ellipse(random(10, width), random(10, height), random(2, 10), random(2, 10));
    fill(0);
    textSize(28);
    textAlign(CENTER);
    text(button2Text, width/2, 400);
    fill(0);
    ellipse(x, y, buttonSize, buttonSize);
  }
}
