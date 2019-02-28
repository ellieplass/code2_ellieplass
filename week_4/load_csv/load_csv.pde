// bryan ma for code 2 sp19 A

Table data;

void setup() {
  size(800, 600);
  data = loadTable("data.csv", "header");
  rectMode(CENTER);

  for (int i = 0; i < data.getRowCount(); i++) {
    TableRow row = data.getRow(i);
    float x = map(i, 0, data.getRowCount() - 1, 100, 700);
    float y = height/2;
    float w = 50;
    float h = row.getInt("height");
    rect(x, y, w, h);
  }
}

void draw() {
}
