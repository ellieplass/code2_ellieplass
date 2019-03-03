// bryan ma for code 2 sp 19 A


//this is currently not functioning, I'm unsure how to proceed 
int rows = 12;
int cols = 12;
int cellsize = 600/rows;

Block[][] blocks = new Block[rows][cols];


//I thought maybe making this Table [][] data would work, but it wouldn't allow this.
//I tried both ways - numbering the columns and not. Currently, the columns
// are numbered (0, 1, 2, etc).
Table data;

void setup() {
  size(600, 600);
  
  // I tried here also only having row, col, and then putting the "data.getrowCount
  //below inside of the for loop, but that didn't work either
  for (int i = 0; i < data.getRowCount(); i++) {
    for (int j = 0; j < data.getRowCount(); j++) {
      TableRow row = data.getRow(i);
      if (row.getInt(i) == 0) {
        blocks[j][i] = new DarkBlock(i, j);
      } else {
        blocks[j][i] = new LightBlock(i, j);
      }
    }
  }
}

void draw() {
  background(255);
  for (int i = 0; i < data.getRowCount() ; i++) {
    for (int j = 0; j < data.getRowCount(); j++) {
      blocks[j][i].display();
    }
  }
}

class Block {
  PVector pos;
  float c;

  Block(int row, int col) {
    pos = new PVector(row * cellsize, col * cellsize);
  }

  void display() {
    fill(c);
    rect(pos.x, pos.y, cellsize, cellsize);
  }
}

class LightBlock extends Block {
  LightBlock(int row, int col) {
    super(row, col);
    c = 220;
  }
}

class DarkBlock extends Block {
  DarkBlock(int row, int col) {
    super(row, col);
    c = 50;
  }
}
