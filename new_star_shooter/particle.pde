class particleClass extends GameObject {

particleClass(float x,float y, float vx, float vy,float size) {
     super(x,y,vx,vy,size,red,1); 
     
  
}



void act() {
 
  super.act();
 
  
  if(size <= 0) {
    lives = 0;
    
  }
  
}


}
