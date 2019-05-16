JSONObject data;
JSONArray pics;
PImage[] images;
PImage webImg;
String pictures;
int whichPhoto = 0;
int imageX = 100;
int imageY = 100;
int imageW = 300;
int imageH = 300;


void setup(){
  size(500, 500);
  getImages();
  background(229, 208, 228);
  fill(0);
  textSize(20);
  text("A slideshow of my work:", 100, 50);
  
}

void draw(){
  switch(whichPhoto){
    case 0:
    image(images[0], imageX, imageY, imageW, imageH);
    break;
    case 1:
    image(images[1], imageX, imageY, imageW, imageH);
    case 2:
    image(images[2], imageX, imageY, imageW, imageH);
    break;
 case 3:
    image(images[3], imageX, imageY, imageW, imageH);
    break;    
     case 4:
    image(images[4], imageX, imageY, imageW, imageH);
    break;
     case 5:
    image(images[5], imageX, imageY, imageW, imageH);
    break;
     case 6:
    image(images[6], imageX, imageY, imageW, imageH);
    break;
     case 7:
    image(images[7], imageX, imageY, imageW, imageH);
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
  }
}

void getImages(){
  data = loadJSONObject("elliepics.json");
  pics = data.getJSONArray("elliepics");
  images = new PImage[pics.size()];
  for (int i = 0; i < images.length; i++){
  JSONObject elliepic = pics.getJSONObject(i);
  pictures = elliepic.getString("image");
  String url = (pictures);
  webImg = loadImage(url, "png");
  images[i] = webImg;
  }
}
