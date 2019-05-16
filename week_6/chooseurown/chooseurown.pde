int state = 0;
JSONObject data;
JSONObject dataopts;
JSONObject datatargs;
JSONArray sceness;
JSONArray targets;
JSONArray options;
String[] scenes1;
int[] targets1;
String[] options1;
String scen;
int targe;
String optio;

Scene[] scenes = new Scene[scenes1.length];

void setup() {
  size(600, 600);

  displayDescr();
  displayOptions();
  displayTargets();


  for (int i = 0; i < scenes.length; i++) {
    scenes[i] = new Scene(scenes1[i], options1[i], targets1[i]);
  }
}

void draw() {
  background(255);
  textSize(40);
  text(scenes[state].displayText, 40, 40, 450, 300);

  textSize(24);
  int i = 0;
  for (String option : scenes[state].options) {
    text(i + 1, 30, 450 + i * 50);
    text(option, 70, 450 + i * 50);
    i++;
  }
}

void keyPressed() {  
  for (int i = 0; i < scenes[state].options.length; i++) {
    if (keyCode - 49 == i) {
      state = scenes[state].optionTargets[i];
    }
  }
}

void displayDescr() {
  data = loadJSONObject("data.json");
  sceness = data.getJSONArray("scenes");
  scenes1 = new String[sceness.size()];
  for (int i = 0; i < scenes1.length; i++) {
    JSONObject sceners = sceness.getJSONObject(i);
    scen = sceners.getString("description");
    String scenin = (scen);
    scenes1[i] = scenin;
  }
}
void displayOptions() {
  dataopts = loadJSONObject("data.json");
  options = data.getJSONArray("scenes");
  options1 = new String[options.size()];
  for (int i = 0; i < options1.length; i++) {
    JSONObject optioners = options.getJSONObject(i);
    optio = optioners.getString("options");
    String optionin = (optio);
    scenes1[i] = optionin;
  }
}

void displayTargets() {
  datatargs = loadJSONObject("data.json");
  targets = data.getJSONArray("scenes");
  targets1 = new int[targets.size()];
  for (int i = 0; i < targets1.length; i++) {
    JSONObject targeters = targets.getJSONObject(i);
    targe = targeters.getInt("optionTargets");
    int targen = (targe);
    targets1[i] = targen;
  }
}

class Scene {
  String displayText;
  String[] options;
  int[] optionTargets;

  Scene(String txt, String[] opt, int[] targets) {
    displayText = txt;
    options = opt;
    optionTargets = targets;
  }
}
