ArrayList <Squares> allSquares = new ArrayList<Squares>();
final int COLS = 25;
final int ROWS = 25; 
int cellSize;
void setup() {
  size(800, 800);
  background(255);
  noStroke();
  
  cellSize = width/COLS;
  
  for(int i = 0; i < COLS; i++){
    for (int j = 0; j< ROWS; j++){
      allSquares.add(new Squares(new PVector(i *cellSize, j*cellSize),
      color(random(255), random(255), random(255)), false, cellSize));
    }
    
  }
}


void draw() {
 for (int i = 0; i < allSquares.size(); i++){
   Squares allSquare = allSquares.get(i);
   if(allSquare.isActive){
     fill(allSquare.colors);
     rect(allSquare.position.x, allSquare.position.y, allSquare.cellSize, allSquare.cellSize);
   } else {
     
     if(mouseX > allSquare.position.x && mouseX < allSquare.position.x + allSquare.cellSize
     && mouseY > allSquare.position.y && mouseY < allSquare.position.y + allSquare.cellSize){
       allSquare.isActive = true; 
       
     }
     
     
   }
}
 }
 
