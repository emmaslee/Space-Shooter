void intro() {
  background(255);
  
  //Start Button
  //Tactile
  
  if (mouseX > 300 && mouseX < 500 && mouseY > 500 && mouseY < 600) {
    fill(200);
  } else {
    fill(146, 240, 140);
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
