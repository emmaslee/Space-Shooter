void pause() {
  background(0);
  
  stroke(0);
  fill(200);
  rect(50, 700, 10, 80);
  fill(0);
  textSize(30);
  text( "PAUSE" , 80, 760);
}

void pauseClicks() {
   if (mouseX > 50 && mouseX < 200 && mouseY > 700 && mouseY < 780) {
    mode = GAME;
  }
}
