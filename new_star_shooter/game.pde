void game() {
  objects.add(0, new Star());
  background(0);

  int i = 0;
  while (i < objects.size()) {
    GameObject s = objects.get(i);
    s.act();
    s.show();
    if (s.lives == 0) {
      objects.remove(i);
    } else {
    i++;
    }
  }
  
  //fill(255);
  //text(frameRate, 20, 20);
  //text(stars.size(), 20, 40);
}

void gameClicks() {
  mode = GAMEOVER;
}
