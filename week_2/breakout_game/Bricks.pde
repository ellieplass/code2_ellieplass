class Bricks {
  int x;
  int y;
  int w;
  int h;
  int COLS;
  int ROWS;
  boolean[][] isActive = new boolean [COLS][ROWS];
 
  Bricks() {
    w = 70;
    h = 14;
    COLS = 10;
    ROWS = 10;
  }

  void display() {
    fill(255);
    
    for (int i = 0; i < COLS; i ++) {
      for (int j = 0; j < ROWS; j++) {
        rect(i*50, j*14, w, h);
        //another attempt to have them bounce off/dissapear, only crashed processing.
       // isActive[i][j] = true; 
      
       //if (ball.xpos > i*50 && ball.xpos < i*50+w && ball.ypos > j*14+h && ball.ypos < j*14){
       // ball.xdirection = -ball.xdirection;
        // isActive[i][j] = false; 
       //}
      }
      }
    
    }
}
