float x;
float y; 
float speed = 3;
float direction = 1;
float a = 0.0; 
float inc = TWO_PI/500.0;
boolean clicked;


void setup(){
  size(500, 500);
  clicked = false; 
}
void draw(){
  background(0);
 if(mousePressed && dist(mouseX, mouseY, x, y) < 20){
  clicked = true; 
 }
 if(clicked == true){
   y = sin(a)*height/2+height/2; 
   x = width/2; 
 }else{
  x = sin(a)*width/2+width/2; 
  y = height/2;
 }
  fill(255);
  ellipse(x, y, 40, 40);
  a = a + inc; 
}
