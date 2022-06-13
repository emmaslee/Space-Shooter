void pause() {
  //background(0);
  
  stroke(0);
  fill(200);
  rect(750, 750, 80, 80);
  fill(0);
  textSize(20);
  text( "PAUSE" , 720, 760);
}

void pauseClicks() {
   if (mouseX > 710 && mouseX < 790 && mouseY > 710 && mouseY < 790) {
    mode = GAME;
  }
}
