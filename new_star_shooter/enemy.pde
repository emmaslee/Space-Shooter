class Enemy extends GameObject {
  
  int cooldown, threshold, bossspawn;
  
  Enemy() {
    super(random(width), 0, 0, 3, 40, dblue, 1);
      threshold = 5;
    cooldown = threshold;
   //threshold = 75;
  }
  
  void act() {
    super.act();
    
    //shoot
    cooldown++;
    if (cooldown == threshold) {
      objects.add(new EnemyBullet(c, y+20, 0, 5));
      
      cooldown = 0;
    }
    objects.add(new EnemyBullet(x, y, 0, 10));
    
    
    //collisions
    int i = 0;
    while (i < objects.size()) {
      GameObject obj = objects.get(i);
      if (obj instanceof Bullet) {
        if (collidingWith(obj)) {
          bossspawn++;
          lives--;
          obj.lives = 0;
         objects.add(new particleClass(x, y, random(-2, 2), random(-2, 2), random(10, 20)));
          objects.add(new particleClass(x, y, random(-2, 2), random(-2, 2), random(10, 30)));
          objects.add(new particleClass(x, y, random(-2, 2), random(-2, 2), random(10, 30)));
          objects.add(new particleClass(x, y, random(-2, 2), random(-2, 2), random(10, 30)));
          objects.add(new particleClass(x, y, random(-2, 2), random(-2, 2), random(10, 30)));
          objects.add(new particleClass(x, y, random(-2, 2), random(-2, 2), random(10, 30)));
        }
      }
      i++; 
    }
    
    //remove if goes off screen
    if (offScreen()) lives = 0;
  }
  void show() {
     imageMode(CENTER);
  image(pship, x, y, 100, 100);
  
  }
}
