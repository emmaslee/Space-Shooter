void game() {
  fill(0, 100);
  rect(width/2, height/2, width, height);
  addObjects();
  gameEngine();
  debug(); 
  
  //pause button
  stroke(0);
  fill(200);
  rect(50, 700, 150, 80);
  fill(0);
  textSize(50);
  text( "||" , 110, 760);
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
  
  
   if (mouseX > 50 && mouseX < 200 && mouseY > 700 && mouseY < 780) {
    mode = PAUSE;
  }
}
