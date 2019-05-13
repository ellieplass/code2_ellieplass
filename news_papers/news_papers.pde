String apiKey = "8e6413d7fc0c473a977507ddaa3d9b3e";
int whichPhoto = 0;
JSONObject data, textdata, descrData;
JSONArray arts, descrip, heads;
String pictures, heds, descri, descr;
PImage webImg;
String[] reals;
PImage[] images;
String[] descriptions;
String[] headlines;
PFont title;
PFont body;
PFont instruct;

int picX = 70;
int picY = 200;
int picW = 250;
int picH = 250;
int headX = 65;
int headY = 155;
int headW = 527;
int headH = 20;
int descX = 350;
int descY = 200;
int descZ = 200;




void setup() {
  size(600, 600);

  updateImages();
  displayHeads();
  displayDescr();

  background(124, 123, 107);
}

void draw() {

  title = createFont("Plain_Black.ttf", 25);
  body = createFont("Crimson-Semibold.otf", 15);
  instruct = createFont("Courier_Prime_copy.ttf", 15);

  fill(0);
  textFont(instruct);
  text("Press any key to flip through the top stories.", 80, 550);

  fill(234, 233, 218);
  rect(60, 50, 530, 450);
  quad(60, 50, 60, 500, 30, 495, 30, 40);
  quad(30, 40, 560, 40, 590, 50, 60, 50);
  line(37, 47, 37, 487);
  line(42, 50, 42, 490);
  line(47, 53, 47, 493);
  line(52, 56, 52, 496);

  line(57, 47, 517, 47);
  line(60, 44, 522, 44);


  fill(0);
  //text(reals[0], 400, 400);
  switch(whichPhoto) {
  case 0:
    textAlign(CENTER);
    textFont(title);
    fill(0);
    textSize(40);
    text("Today's Top Headlines", 300, 100);

    if (images[0] != null) {
      image(images[0], picX, picY, picW, picH);
    }
    fill(0);
    textFont(body);
    textAlign(LEFT);
    text(headlines[0], headX, headY, headW, headH);
    text(descriptions[0], descX, descY, descZ, descZ);
    break;
  case 1:
    textAlign(CENTER);
    textFont(title);
    fill(0);
    textSize(40);
    text("Today's Top Headlines", 300, 100);
    if (images[1] != null) {
      image(images[1], picX, picY, picW, picH);
    }
    fill(0);
    textFont(body);
    textAlign(LEFT);
    text(headlines[1], headX, headY, headW, headH);
    text(descriptions[1], 350, 200, 200, 200);


    break;
  case 2: 
    textAlign(CENTER);
    textFont(title);
    fill(0);
    textSize(40);
    text("Today's Top Headlines", 300, 100);
    if (images[2] != null) {
      image(images[2], picX, picY, picW, picH);
    }  
    fill(0);
    textFont(body);
    textAlign(LEFT);
    text(headlines[2], headX, headY, headW, headH);
    text(descriptions[2], descX, descY, descZ, descZ);

    break;
  case 3:
    textAlign(CENTER);
    textFont(title);
    fill(0);
    textSize(40);
    text("Today's Top Headlines", 300, 100);
    if (images[3] != null) {
      image(images[3], picX, picY, picW, picH);
    }   
    fill(0);
    textFont(body);
    textAlign(LEFT);
    text(headlines[3], headX, headY, headW, headH);
    text(descriptions[3], descX, descY, descZ, descZ);

    break;
  case 4: 
    textAlign(CENTER);
    textFont(title);
    fill(0);
    textSize(40);
    text("Today's Top Headlines", 300, 100);
    if (images[4] != null) {
      image(images[4], picX, picY, picW, picH);
    }    
    fill(0);
    textFont(body);
    textAlign(LEFT);
    text(headlines[4], headX, headY, headW, headH);
    text(descriptions[4], descX, descY, descZ, descZ);

    break;
  case 5:
    textAlign(CENTER);
    textFont(title);
    fill(0);
    textSize(40);
    text("Today's Top Headlines", 300, 100);
    if (images[5] != null) {
      image(images[5], picX, picY, picW, picH);
    }   
    fill(0);
    textFont(body);
    textAlign(LEFT);
    text(headlines[5], headX, headY, headW, headH);
    text(descriptions[5], descX, descY, descZ, descZ);

    break;
  case 6:
    textAlign(CENTER);
    textFont(title);
    fill(0);
    textSize(40);
    text("Today's Top Headlines", 300, 100);
    if (images[6] != null) {
      image(images[6], picX, picY, picW, picH);
    }   
    fill(0);
    textFont(body);
    textAlign(LEFT);
    text(headlines[6], headX, headY, headW, headH);
    text(descriptions[6], descX, descY, descZ, descZ);

    break;
  case 7:
    textAlign(CENTER);
    textFont(title);
    fill(0);
    textSize(40);
    text("Today's Top Headlines", 300, 100);
    if (images[7] != null) {
      image(images[7], picX, picY, picW, picH);
    }   
    fill(0);
    textFont(body);
    textAlign(LEFT);
    text(headlines[7], headX, headY, headW, headH);
    text(descriptions[7], descX, descY, descZ, descZ);

    break;
  case 8:
    textAlign(CENTER);
    textFont(title);
    fill(0);
    textSize(40);
    text("Today's Top Headlines", 300, 100);
    if (images[8] != null) {
      image(images[8], picX, picY, picW, picH);
    }   
    fill(0);
    textFont(body);
    textAlign(LEFT);
    text(headlines[8], headX, headY, headW, headH);
    text(descriptions[8], descX, descY, descZ, descZ);

    break;
  case 9: 
    textAlign(CENTER);
    textFont(title);
    fill(0);
    textSize(40);
    text("Today's Top Headlines", 300, 100);
    if (images[9] != null) {
      image(images[9], picX, picY, picW, picH);
    }   
    fill(0);
    textFont(body);
    textAlign(LEFT);
    text(headlines[9], headX, headY, headW, headH);
    text(descriptions[9], descX, descY, descZ, descZ);

    break;
  case 10:
    textAlign(CENTER);
    textFont(title);
    fill(0);
    textSize(40);
    text("Today's Top Headlines", 300, 100);
    if (images[10] != null) {
      image(images[10], picX, picY, picW, picH);
    }   
    fill(0);
    textFont(body);
    textAlign(LEFT);
    text(headlines[10], headX, headY, headW, headH);
    text(descriptions[10], descX, descY, descZ, descZ);

    break;
  case 11:
    textAlign(CENTER);
    textFont(title);
    fill(0);
    textSize(40);
    text("Today's Top Headlines", 300, 100);
    if (images[11] != null) {
      image(images[11], picX, picY, picW, picH);
    }   
    fill(0);
    textFont(body);
    textAlign(LEFT);
    text(headlines[11], headX, headY, headW, headH);
    text(descriptions[11], descX, descY, descZ, descZ);

    break;
  case 12:
    textAlign(CENTER);
    textFont(title);
    fill(0);
    textSize(40);
    text("Today's Top Headlines", 300, 100);
    if (images[12] != null) {
      image(images[12], picX, picY, picW, picH);
    }   
    fill(0);
    textFont(body);
    textAlign(LEFT);
    text(headlines[12], headX, headY, headW, headH);
    text(descriptions[12], descX, descY, descZ, descZ);

    break;
  case 13:
    textAlign(CENTER);
    textFont(title);
    fill(0);
    textSize(40);
    text("Today's Top Headlines", 300, 100);
    if (images[13] != null) {
      image(images[13], picX, picY, picW, picH);
    }   
    fill(0);
    textFont(body);
    textAlign(LEFT);
    text(headlines[13], headX, headY, headW, headH);
    text(descriptions[13], descX, descY, descZ, descZ);

    break;
  case 14: 
    textAlign(CENTER);
    textFont(title);
    fill(0);
    textSize(40);
    text("Today's Top Headlines", 300, 100);
    if (images[14] != null) {
      image(images[14], picX, picY, picW, picH);
    }   
    fill(0);
    textFont(body);
    textAlign(LEFT);
    text(headlines[14], headX, headY, headW, headH);
    text(descriptions[14], descX, descY, descZ, descZ);

    break;
  case 15: 
    textAlign(CENTER);
    textFont(title);
    fill(0);
    textSize(40);
    text("Today's Top Headlines", 300, 100);
    if (images[15] != null) {
      image(images[15], picX, picY, picW, picH);
    }   
    fill(0);
    textFont(body);
    textAlign(LEFT);
    text(headlines[15], headX, headY, headW, headH);
    text(descriptions[15], descX, descY, descZ, descZ);

    break;
  case 16: 
    textAlign(CENTER);
    textFont(title);
    fill(0);
    textSize(40);
    text("Today's Top Headlines", 300, 100);
    if (images[16] != null) {
      image(images[16], picX, picY, picW, picH);
    }   
    fill(0);
    textFont(body);
    textAlign(LEFT);
    text(headlines[16], headX, headY, headW, headH);
    text(descriptions[16], descX, descY, descZ, descZ);

    break;
  case 17: 
    textAlign(CENTER);
    textFont(title);
    fill(0);
    textSize(40);
    text("Today's Top Headlines", 300, 100);
    if (images[17] != null) {
      image(images[17], picX, picY, picW, picH);
    }   
    fill(0);
    textFont(body);
    textAlign(LEFT);
    text(headlines[17], headX, headY, headW, headH);
    text(descriptions[17], descX, descY, descZ, descZ);

    break;
  case 18: 
    textAlign(CENTER);
    textFont(title);
    fill(0);
    textSize(40);
    text("Today's Top Headlines", 300, 100);
    if (images[18] != null) {
      image(images[18], picX, picY, picW, picH);
    }   
    fill(0);
    textFont(body);
    textAlign(LEFT);
    text(headlines[18], headX, headY, headW, headH);
    text(descriptions[18], descX, descY, descZ, descZ);

    break;
  case 19: 
    textAlign(CENTER);
    textFont(title);
    fill(0);
    textSize(40);
    text("Today's Top Headlines", 300, 100);
    if (images[19] != null) {
      image(images[19], picX, picY, picW, picH);
    }   
    fill(0);
    textFont(body);
    textAlign(LEFT);
    text(headlines[19], headX, headY, headW, headH);
    text(descriptions[19], descX, descY, descZ, descZ);

    break;
  case 20: 

    fill(0);
    textFont(body);
    textAlign(LEFT);
    text("Check back soon for more news!", 200, 300);

    break;
  }
}


void keyPressed() {
  whichPhoto++;
  switch(whichPhoto) {
  case 0:
    break;
  case 1:
    break;
  case 2:
    break;
  case 3:
    break;
  case 4: 
    break;
  case 5:
    break;
  case 6:
    break;
  case 7:
    break;
  case 8:
    break;
  case 9: 
    break;
  case 10:
    break;
  case 11:
    break;
  case 12:
    break;
  case 13:
    break;
  case 14: 
    break;
  case 15:
    break;
  case 16:
    break;
  case 17:
    break;
  case 18:
    break;
  case 19:
    break;
  case 20:
    break;
  }
}


void updateImages() {
  data = loadJSONObject("https://newsapi.org/v2/top-headlines?country=us&apiKey="+apiKey);
  arts = data.getJSONArray("articles");
  images = new PImage[arts.size()];
  for (int i = 0; i < images.length; i++) {
    JSONObject articles = arts.getJSONObject(i);
    if (!articles.isNull("urlToImage")) {
      pictures = articles.getString("urlToImage");
      String url = (pictures);
      webImg = loadImage(url, "png");

      if (webImg != null) {
        images[i] = webImg;
      }
    }
  }
}

void displayHeads() {

  textdata = loadJSONObject("https://newsapi.org/v2/top-headlines?country=us&apiKey="+apiKey);
  heads = textdata.getJSONArray("articles");
  headlines = new String[heads.size()];
  for (int i = 0; i < headlines.length; i++) {
    JSONObject hedders = heads.getJSONObject(i);
    heds = hedders.getString("title");
    String headlin = (heds);

    headlines[i] = headlin;
  }
}

void displayDescr() {

  descrData = loadJSONObject("https://newsapi.org/v2/top-headlines?country=us&apiKey="+apiKey);
  descrip = textdata.getJSONArray("articles");
  descriptions = new String[descrip.size()];
  for (int i = 0; i < descriptions.length; i++) {
    JSONObject desc = descrip.getJSONObject(i);
    descri = desc.getString("content");
    String descriptionss = (descri);

    descriptions[i] = descriptionss;
  }
}
