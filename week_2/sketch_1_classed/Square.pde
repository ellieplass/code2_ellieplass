class Squares {
  PVector position;
  color colors;
  boolean isActive;
  int cellSize;

  Squares(PVector position1, color colors1, boolean isActive1, int cellSize1) {
    position = position1;
    colors = colors1;
    isActive = isActive1;
    cellSize = cellSize1;
  }

  void display() {
    fill(colors);
    rect(position.x, position.y, cellSize, cellSize);
  }
}
