class EnemyC extends GameObject {

  float cooldown, threshold;
  
  EnemyC() {
    super(0, random(height),random(3,1),random(1), 100, dblue, 5);
    cooldown = 0;
    threshold = 100;
  }

  void act() {
    
    super.act();
    //shoot
    cooldown++;
    if (cooldown == threshold) {
      objects.add(new EnemyBullet(x+50, y+50, 5, 5));
      objects.add(new EnemyBullet(x-50, y+50, -5, 5));
      objects.add(new EnemyBullet(x+50, y-50, 5, -5));
      objects.add(new EnemyBullet(x-50, y-50, -5, -5));
 
  
      cooldown = 0;
    }
    //collisions
    int i = 0;
    while (i < objects.size()) {
      GameObject obj = objects.get(i);
      if (obj instanceof Bullet) {
        if (collidingWith(obj)) {
          lives--;
          obj.lives = 0;
            if (lives == 0) {
              
              
          objects.add(new particleClass(x, y, random(-2, 2), random(-2, 2), random(10, 20)));
          
          objects.add(new particleClass(x, y, random(-2, 2), random(-2, 2), random(10, 20)));
          
          objects.add(new particleClass(x, y, random(-2, 2), random(-2, 2), random(10, 20)));
          
          objects.add(new particleClass(x, y, random(-2, 2), random(-2, 2), random(10, 20)));
          
          objects.add(new particleClass(x, y, random(-2, 2), random(-2, 2), random(10, 20)));
          
          objects.add(new particleClass(x, y, random(-2, 2), random(-2, 2), random(10, 20)));
          }
        }
      }
      i++;
    }
    
    
    if (offScreen()) lives = 0;
  }
   void show() {
     imageMode(CENTER);
  image(greyship, x, y, 150, 150);
  
  }
}
