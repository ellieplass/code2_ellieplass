// bryan ma for code 2 sp 19 A

String[] data;
Squares square;


void setup() {
  data = loadStrings("dataPos.txt");
  background(255, 0, 240);
  size(600, 600);
  String[] splitData = data[0].split(",");
  for (int i = 0; i < splitData.length; i++) {
   square = new Squares(int(splitData[i]));
   square.display();
  }
}

void draw() {
  
}

class Squares{
  int w, h, x;
  int h1 = height/2;
  
  Squares(int i){
    x = i * 70 + 100;
  }
  
  void display(){
    rect(x, h1, 50, 50);
  }
  
  
}
