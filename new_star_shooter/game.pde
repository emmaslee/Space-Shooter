void game() {
  fill(0, 100);
  rect(width/2, height/2, width, height);
  addObjects();
  gameEngine();
  debug(); 
  
  fill(0);
  textSize(40);
  text("Score: " + score, width/2, 50);
  text("Lives: " + lives, width/2, 100);
  
  //pause button
  stroke(0);
  fill(200);
  rect(750, 750, 80, 80);
  fill(0);
  textSize(50);
  text( "||" , 730, 760);
}

void addObjects() {
  objects.add(0, new Star());
  
  if (frameCount % 30 == 0) objects.add(new Enemy());
  if (frameCount % 30 == 0) objects.add(new EnemyB());
  if (frameCount % 200 == 0) objects.add(new EnemyC());
  if (bossspawn == 2) {
    objects.add(new EnemyD());
    bossspawn = 0;
  }
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
  //fill(255);
 // text(frameRate, 17, 20);
 // text(objects.size(), 20, 40);
 // println(bossspawn);
  //text("Lives: " + player1.lives,width-40,20);
  //text("Time Alive " + time,width-80,40);
  
}


void gameClicks() {
  
  
   if (mouseX > 710 && mouseX < 790 && mouseY > 710 && mouseY < 790) {
    mode = PAUSE;
  }
}
