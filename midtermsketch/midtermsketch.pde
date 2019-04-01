//required
//class based approach- each button represented by a class
//represent global state approach for button 1 and 2 pressed no idea what that means
//move some values to external data 

Table data;
//nighttime
Button1 button1;
//daytime
Button2 button2;
color bgColor = color(230);
String textToShow = "";

void setup() {
  size(600, 600);
  data = loadTable("data.csv", "header");
  button1 = new Button1();
  button2 = new Button2();
}

void draw() {
  background(bgColor);
 
  if (dist(mouseX, mouseY, button1.x, button1.y) < button1.buttonSize/2 && mousePressed) {
    //tried also no for loops and calling by row 1, row 0, etc, did not work
    for (int i =0; i < data.getRowCount(); i++){
    TableRow row = data.getRow(0);
    String text = row.getString("Text");
    fill(0);
    text(text, width/2, 400);
    }
    button1.pressed();
  } else {
    //this also did not work
     fill(0);
    text("Night", button1.x, button1.y);
    fill(255);
    button1.display();
  }


  if (dist(mouseX, mouseY, button2.x, button2.y) < button2.buttonSize/2 && mousePressed) {
    button2.pressed();
  } else {
    fill(255);
    button2.display();
  }
}
