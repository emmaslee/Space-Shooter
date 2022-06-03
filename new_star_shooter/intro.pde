void intro() {
  background(37, 30, 57);
   
   // Game Title
  strokeWeight(1);
  fill(189, 185, 193);
  textSize(72);
  text("STAR SHOOTER", 160, 300);
  
  //Start Button
  //Tactile
  
  if (mouseX > 300 && mouseX < 500 && mouseY > 450 && mouseY < 550) {
    fill(200);
  } else {
    fill(55, 92, 100);
  }
  rect(400, 500, 200, 100);
  fill(0);
  textSize(30);
  text("START", 350, 510);
}

void introClicks() {
   if (mouseX > 300 && mouseX < 500 && mouseY > 450 && mouseY < 550) {
   mode = GAME;
  }
}
