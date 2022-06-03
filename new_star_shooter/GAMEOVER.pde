void gameover() {
  background(0);
   textSize(80);
    fill(255);
    text("GAMEOVER", 180, 320);
   
   
    //Return to Game button
  //tactile - Return to Game button
  if (mouseX > 300 && mouseX < 500 && mouseY > 350 && mouseY < 450) {
    fill(200);
  } else {
    fill(146, 240, 140);
  }
  rect(400, 400, 200, 100);
  fill(0);
  textSize(30);
  text("RETURN", 340, 410); 

}

void gameoverClicks() {
   if (mouseX > 300 && mouseX < 500 && mouseY > 350 && mouseY < 450) {
    setup();
   }
}
