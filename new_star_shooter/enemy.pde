class Enemy extends GameObject {
  
  Enemy() {
    super(random(width), 0, 0, 3, 40, yellow, 1);
  }
  
  void act() {
    super.act();
    
    //shoot
    objects.add(new EnemyBullet(x, y, 0, 10));
    objects.add(new EnemyBullet(x, y, 10, 0));
    objects.add(new EnemyBullet(x, y, 0, -10));
    objects.add(new EnemyBullet(x, y, -10, 0));
    
    //collisions
    int i = 0;
    while (i < objects.size()) {
      GameObject obj = objects.get(i);
      if (obj instanceof Bullet) {
        if (collidingWith(obj)) {
          lives--;
          obj.lives = 0;
        }
      }
      i++;
    }
    
    //remove if goes off screen
    if (offScreen()) lives = 0;
  }
}
