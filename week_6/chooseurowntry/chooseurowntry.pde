// state = screen
// text to display for each screen   (state representation)
// options to choose for each screen (state transitions)

// string for each text
// string for each option - corresponds to a keypress

int state = 0;
JSONObject info;

Scene[] scenes = new Scene[3];
String[] strings = new String[3];

void setup() {
  size(600, 600);
  info = loadJSONObject("data.json");
  JSONArray descriptions = info.getJSONArray("descriptions");
  JSONArray options = info.getJSONArray("options");
  JSONArray optionTargets = info.getJSONArray("optionTargets");
  JSONArray mycolors = info.getJSONArray("colors");
  
  for (int i = 0; i < descriptions.size(); i++) {
    String description = descriptions.getString(i);
    JSONArray optionsForScene = options.getJSONArray(i); 
    JSONArray optionTargetsForScene = optionTargets.getJSONArray(i);
    int[] myTargets = new int[optionTargetsForScene.size()];
  
    for (int j = 0; j < optionTargetsForScene.size(); j++) {
      myTargets[j] = optionTargetsForScene.getInt(j);
       
    }
    String[] myOpts = new String[optionsForScene.size()];
    for (int k = 0; k < optionsForScene.size(); k++){
      myOpts[k] = optionsForScene.getString(k);
    }
 color [] myCols = new color[mycolors.size()];
    for (int l =0; l < mycolors.size(); l++){
      myCols[l] = mycolors.getInt(l);
    }
      scenes[i] = new Scene(description, myOpts, myTargets, myCols);
  }
}

void draw() {
  background(mycolors);
  textSize(40);
  fill(0);
  text(scenes[state].displayText, 40, 40, 450, 300);

  textSize(24);
  int i = 0;
  for (String option : scenes[state].options) {
    text(option, 40, 450 + i * 50);
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

class Scene {
  String displayText;
  String[] options;
  int[] optionTargets;
  color[] col;

  Scene(String txt, String[] opt, int[] targets, color[] colors) {
    displayText = txt;
    options = opt;
    optionTargets = targets;
    col = colors;
  }
}
