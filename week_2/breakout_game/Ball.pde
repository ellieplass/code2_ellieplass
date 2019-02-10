class Ball {
  float xpos;
  float ypos;
  int xdirection;
  int ydirection;
  float xspeed;
  float yspeed;
  int radius; 

  Ball() {
    xpos = width/2;
    ypos = height/2;
    xdirection = 1;
    ydirection = 1;
    xspeed = 2.2;
    yspeed = 3.2; 
    radius = 20;
  }

  void Display() {
    fill(255);
    xpos = xpos + (xspeed * xdirection); 
    ypos = ypos + (yspeed * ydirection);
    ellipse(xpos, ypos, radius, radius);
  }
  void Collide() {
    if (xpos > width  || xpos < 0) {
      xdirection = -xdirection;
    }
    if (ypos > height  || ypos < 0 ) {
      ydirection = -ydirection;
    }
  }
  
  void hitPaddle() {
    if (xpos > paddle.x && xpos < paddle.x + paddle.w && ypos > paddle.y) {
      ydirection = -ydirection;
    }
  }
    
  }
  
