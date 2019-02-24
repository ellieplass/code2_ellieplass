class Builds{
  float x;
  color c;
  float h = random(40, 200);
  float w = 50;
  
  Builds(int i){
    x = w*i;
    c = color(map(i, 0, num_shapes, (random(0, 50)), (random(0,50))));
  }
  
  void display(){
    fill(c);
    rect(x, height-h, 50, h);
 
  }
  
}
