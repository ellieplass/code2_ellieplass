
class Paddle {
  float x;
  float y;
  float w;
  float h; 


  Paddle(float xpos, float ypos, float width1, float height1) {
    w = width1;
    h = height1;
    x = xpos;
    y = ypos;
  }

  void display() {
    rect(x, y, w, h);
  }
    
  }
