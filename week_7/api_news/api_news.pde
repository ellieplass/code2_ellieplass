String apiKey = "8e6413d7fc0c473a977507ddaa3d9b3e";

JSONObject headlines; 
JSONObject titles;
JSONArray values;
String reals;
float y;

float time = 0;
float timeToWait = 20000;

void setup() {
  size(700, 700);
  fill(0);
  time = millis();
}

void draw() {
  background(255);
  updateHeadlines();
  if (millis() > time + timeToWait) {
    updateHeadlines();
    time = millis();
  }
}

void updateHeadlines() {
  headlines = loadJSONObject("https://newsapi.org/v2/top-headlines?country=us&apiKey=" + apiKey);
  values = headlines.getJSONArray("articles");

  for (int i = 0; i < 20; i++) {
    JSONObject articles = values.getJSONObject(i);
    reals = articles.getString("title");
    println(reals);
    y = y + .025;
    textSize(40);
    text("Top World Headlines", 20, 50);
    textSize(12);
    //I wasn't sure how to make them scroll through again
    float ypos = (65*i+5)-y;
    //if(ypos < 0){
    //  ypos = height - y;
    //}
    text(reals, 20, ypos);
    
  }
}
