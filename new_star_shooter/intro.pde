void intro() {
  background(37, 30, 57);
   
   // Game Title
  strokeWeight(1);
  fill(189, 185, 193);
  textSize(72);
  text("STAR SHOOTER", 160, 300);
  
  //Start Button
  //Tactile
  
  if (mouseX > 300 && mouseX < 500 && mouseY > 500 && mouseY < 600) {
    fill(200);
  } else {
    fill(55, 92, 100);
  }
  rect(300, 500, 200, 100);
  fill(0);
  textSize(30);
  text("START", 350, 565);
}

void introClicks() {
   if (mouseX > 300 && mouseX < 500 && mouseY > 500 && mouseY < 600) {
   mode = GAME;
  }
}
