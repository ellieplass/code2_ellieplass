
class Button1 {
  int x = 180;
  int y = 200;
  color button1BG = color(68, 75, 86);
  int buttonSize = 125;

  Button1() {
  }

  void display() {

    fill(255);
    ellipse(x, y, buttonSize, buttonSize);
  }

  void pressed() {
    background(button1BG);
    fill(232, 218, 64);
    ellipse(random(10, width), random(10, height), random(2, 10), random(2, 10));
    fill(0);
    ellipse(x, y, buttonSize, buttonSize);
  }
}
