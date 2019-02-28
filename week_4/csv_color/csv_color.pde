// bryan ma for code 2 sp 19 A

Table data;

void setup() {
  size(600,600);
  data = loadTable("data.csv", "header");
  
  for (int i = 0; i < data.getRowCount(); i++) {
    TableRow row = data.getRow(i);
    int x = row.getInt("x");
    int y = row.getInt("y");
    int size = row.getInt("size");
    color col = row.getInt("color");
    fill(col);
    ellipse(x, y, size, size);
  }
}

void draw() {}

void mousePressed() {
  int s = int(random(50, 200));
  int col = int(random(0, 255));
  ellipse(mouseX, mouseY, s, s);
  TableRow newRow = data.addRow();
  newRow.setInt("x", mouseX);
  newRow.setInt("y", mouseY);
  newRow.setInt("size", s);
  newRow.setInt("color", col);
  saveTable(data, "data/data.csv");
}
