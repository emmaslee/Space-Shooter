void game() {
  fill(0, 100);
  rect(width/2, height/2, width, height);
  addObjects();
  gameEngine();
  debug();
}

void addObjects() {
  objects.add(0, new Star());
  
  if (frameCount % 30 == 0) objects.add(new Enemy());
}

void gameEngine() {
   int i = 0;
  while (i < objects.size()) {
    GameObject obj = objects.get(i);     
    obj.act();
    obj.show();
    if (obj.lives == 0) {
      objects.remove(i);
    } else {
    i++;
    }
  }  
}

void debug() {
  text(frameRate, 20, 20);
  text(objects.size(), 20, 40);
}


void gameClicks() {
  mode = GAMEOVER;
}
