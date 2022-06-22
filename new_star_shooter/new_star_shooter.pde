  //GLOBAL VARiABLES
final int INTRO     = 0;
final int GAME      = 1;
final int GAMEOVER  = 2;
final int PAUSE     = 3;
int mode;
int bossspawn;
int thickness;
int time;
int score, lives;
int gunMode;

//variables for target options
PImage coolship;
PImage bship;
PImage gship;
PImage pship;
PImage greyship;
PImage selectedImage;
PImage background;
PImage bground;
PImage galaxy;

//pallette
color red    = #e63946;
color dblue  = #1d3557;
color lblue  = #f1faee;
color yellow = #fdca40;
color green  = #1AFA0F;

boolean up, down, left, right, space;

ArrayList<GameObject> objects;

Starfighter player1;

//==============================================================

void setup() {
  size (800, 800);
  mode = INTRO;
  selectedImage = bship;
  rectMode(CENTER);
  noStroke();
  lives = 3;
  
  objects = new ArrayList<GameObject>();
  player1 = new Starfighter();
  objects.add(player1);
  
  //target options
 coolship = loadImage("bcoolspaceship.png");
 bship = loadImage("bspaceship.png"); 
 gship = loadImage("gspaceship.png"); 
 pship = loadImage("pspaceship.png"); 
 greyship = loadImage("greyship.png"); 
  background = loadImage("space.png"); 
  bground = loadImage("bground.png");
  galaxy = loadImage("galaxy.png");
 
 selectedImage = bship;
 
}

//================================================================

void draw() {
  if      (mode == INTRO)    intro();
  else if (mode == GAME)     game();
  else if (mode == GAMEOVER) gameover();
  else if (mode == PAUSE)    pause();
}

//====================================================================
