void intro() {
  background(galaxy);
   
   // Game Title
  strokeWeight(1);
  fill(189, 185, 193);
  textSize(72);
  text("STAR SHOOTER", 160, 300);
  
  image(greyship , 550, 400, 180, 180);
  image(greyship , 70, 400, 180, 180);
  
  
  //Start Button
  //Tactile
  if (mouseX > 300 && mouseX < 500 && mouseY > 450 && mouseY < 550) {
    fill(200);
  } else {
    fill(#390910);
  }
  rect(400, 500, 200, 100);
  fill(255);
  textSize(30);
  text("START", 350, 510);
}

void introClicks() {
   if (mouseX > 300 && mouseX < 500 && mouseY > 450 && mouseY < 550) {
   mode = GAME;
  }
}
