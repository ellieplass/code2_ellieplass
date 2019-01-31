
String[] quote = {"amazing", "wow", "incredible", "insanity"};
int[] circleX = {70, 180, 290, 400};


void setup(){
  size(500, 500);
 
}

void draw(){
  background(255);
  fill(255);
  for (int i = 0; i < 4; i++){
     ellipse(circleX[i], 250, 80, 80);
  }
  if(dist(mouseX, mouseY, circleX[0], 250) < 40 && mousePressed){
  fill(0);
  text(quote[0], 200, 400);
  ellipse(circleX[0], 250, 80, 80);
}
else if(dist(mouseX, mouseY, circleX[1], 250) < 40 && mousePressed){
  fill(0);
  text(quote[1], 200, 400);
  ellipse(circleX[1], 250, 80, 80);
}
else if(dist(mouseX, mouseY, circleX[2], 250) < 40 && mousePressed){
  fill(0);
  text(quote[2], 200, 400);
  ellipse(circleX[2], 250, 80, 80);
}
else if(dist(mouseX, mouseY, circleX[3], 250) < 40 && mousePressed){
  fill(0);
  text(quote[3], 200, 400);
  ellipse(circleX[3], 250, 80, 80);
}
 
}
