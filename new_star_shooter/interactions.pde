void keyPressed() {
  if (keyCode == UP)  up = true;
  if (keyCode == DOWN) up=down = true;
  if (keyCode == LEFT) left = true;
  if (keyCode == RIGHT) right = true;
  if (keyCode == ' ') space = true;
}

void keyReleased() {
  if (keyCode == UP)  up = false;
  if (keyCode == DOWN) up=down = false;
  if (keyCode == LEFT) left =false;
  if (keyCode == RIGHT) right = false;
  if (keyCode == ' ') space = false;
}

//void mousePressed() {
//  if      (mode == INTRO)  introClicks();
//  else if (mode == GAME)   gameClicks();
//  else if (mode == GAMEOVER)   gameoverClicks();
//  else if (mode == PAUSE)   pauseClicks();
//}
