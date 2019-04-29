String apiKey = "8e6413d7fc0c473a977507ddaa3d9b3e";
JSONObject images;
JSONArray arts;
String pictures;
PImage webImg;


void setup(){
  size(600, 600);
}

void draw(){
  background(255);
  updateImages();
}

void updateImages(){
  images = loadJSONObject("https://newsapi.org/v2/top-headlines?country=us&apiKey="+apiKey);
  arts = images.getJSONArray("articles");
  
  for(int i = 0; i < arts.size(); i++){
    JSONObject articles = arts.getJSONObject(i);
    pictures = articles.getString("urlToImage");
    // it is saying this is not a string, but i'm not sure how else I can call it?
    String url = (pictures);
    webImg = loadImage(url, "png");
    image(webImg, i+20, i+20, 40, 40);
  }
}
