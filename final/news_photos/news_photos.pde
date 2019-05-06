String apiKey = "8e6413d7fc0c473a977507ddaa3d9b3e";
JSONObject images;
JSONArray arts;
String pictures;
PImage webImg;
int imageWidth = 120;
int imageHeight = 120;
final int COLS = 20;
final int ROWS = 20;
PVector[][] pos = new PVector[COLS][ROWS];

void setup(){
  size(600, 600);
    background(255);
  //changeHeight();
 

}

void draw(){
     updateImages();

}

void updateImages(){
  images = loadJSONObject("https://newsapi.org/v2/top-headlines?country=us&apiKey="+apiKey);
  arts = images.getJSONArray("articles");
  println(arts.size());
  for(int i = 0; i < COLS; i++){
    for (int j = 0; j < ROWS; j++){
    JSONObject articles = arts.getJSONObject(i);
    if(!articles.isNull("urlToImage")){
    pictures = articles.getString("urlToImage");
    String url = (pictures);
    webImg = loadImage(url, "png");
   
    if(webImg != null){
    image(webImg, i*120, j*120, imageWidth, imageHeight);
    }
  
    }
  }
  }
}
  
 // void changeHeight(){
 // for(int i =0; i < 20; i++){
 //if(mouseX > i*imageWidth && mouseX < (i*120)+imageWidth && mouseY > 0 && mouseY < imageHeight){
 //     println("mouse in here!");
 //     imageWidth = 200;
 //     imageHeight = 200;
 //}
 // }

  
  
