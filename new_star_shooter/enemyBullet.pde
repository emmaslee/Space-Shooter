class EnemyBullet extends GameObject {
  
  EnemyBullet(float x, float y, float vx, float vy) {
    super(x, y, vx, vy, 10, #43A3DE, 1);
  }
    void act() {
   super.act();
   if (offScreen()) lives = 0;
    
    
  }
}
