//GLOBAL VARiABLES
final int INTRO     = 0;
final int GAME      = 1;
final int GAMEOVER  = 2;
final int PAUSE     = 3;
int mode;

boolean up, down, left, right, space;

ArrayList<Star> stars;


//==============================================================

void setup() {
  size (800, 800);
  mode = INTRO;
  
  stars = new ArrayList<Star>();
}

//================================================================

void draw() {
  if      (mode == INTRO)    intro();
  else if (mode == GAME)     game();
  else if (mode == GAMEOVER) gameover();
  else if (mode == PAUSE)    pause();
}

//====================================================================
