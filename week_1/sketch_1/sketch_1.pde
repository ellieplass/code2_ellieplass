boolean[][] squares = new boolean[20][20];
int x;
int y;
void setup() {
  size(500, 500); 
  background(255);
  for (int i = 0; i < squares.length; i++) {
    for (int r = 0; r < squares.length; r++) {
      squares[i][r]= false;
    }
  }
  x = width/20; 
  y = height/20;
}

void draw() {
  noStroke();
  for (int i = 0; i < squares.length; i++) {
    for (int r = 0; r < squares.length; r++) {
      if (squares[i][r]== true) {
        fill(random(255), random(255), random(255));
      } else {
        fill(255);
      }
      rect(i*x, r*y, x, y);
    }
  }
}

void mousePressed() {
  for (int i = 0; i < squares.length; i++) {
    for (int r = 0; r < squares.length; r++) {
      if (squares[i][r]== false && i*x < mouseX && mouseX < i*x+x && r*y < mouseY && mouseY < r*y+y) {
        squares[i][r]= true;
      }
    }
  }
}
