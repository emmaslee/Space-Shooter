void game() {
  stars.add(new Star());
  background(0);

  int i = 0;
  while (i < stars.size()) {
    Star s = stars.get(i);
    s.act();
    s.show();
    if (s.lives == 0) {
      stars.remove(i);
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
