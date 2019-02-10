Ball ball = new Ball(); 
Paddle paddle; 
Bricks brick = new Bricks();

//see below comment
//int COLS = 10;
//int ROWS = 10;
//int w = 70;
//int h = 14; 
//boolean[][] isActive = new boolean[COLS][ROWS];

float paddle1 = 40;
void setup() {
  size(500, 500);

paddle = new Paddle(width/2, 450, 70, 10);

}
 
void draw() {
  background(0);
  ball.Display();
  ball.Collide();
  ball.hitPaddle();
  paddle.display();
  brick.display();

//this was my attempt to come out of the bricks class and instead display 
//them here in order 
//to get them to disappear/ ball to bounce off. obviously, didn't work.
   //for (int i = 0; i < COLS; i ++) {
   //   for (int j = 0; j < ROWS; j++) {
   //     rect(i*50, j*14, w, h);
   //   if(ball.xpos > i*50 && ball.xpos < i*50 + w && ball.ypos > j *14 && ball.ypos < j*14 +h){
   //     isActive[i][j] = false;
   //     ball.xdirection = -ball.xdirection;
   //     ball.ydirection = -ball.ydirection;
   //   }
      
   //   }
   //}
      }
  

void keyPressed(){
  if (key==CODED){
    if(keyCode == RIGHT){
      paddle.x += paddle1;
    } else if (keyCode == LEFT){
      paddle.x -= paddle1;
    }
    if(paddle.x < 0){
      paddle.x = 0;
    }else if(paddle.x > width - paddle.w){
      paddle.x = width - paddle.w;
    }
  }
  
}


    
  
