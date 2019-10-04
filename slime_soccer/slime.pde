class slime {
  PVector x, v;
  float r;
  boolean jump, moveLeft, moveRight;

  slime() {
    r = 75;
    x = new PVector(100, 100);
    v = new PVector(0, 0);
    jump = false;
    moveLeft = false;
    moveRight = false;
  }

  void render() {
    fill(0,255,0);
    arc(x.x, x.y, 2*r, 2*r, PI, TWO_PI, CHORD);
        fill(255);
    ellipse(x.x+30, x.y-40, 20, 20);
      fill(0);
    ellipse(x.x+35, x.y-45, 10, 10);


  }

  void update() {
    v.y += g;

    if (moveLeft) {
      v.x += -8;
    }
    if (moveRight) {
      v.x += 8;
    }
    if (jump && x.y == height) {
      v.y = -10;
      jump = false;
    }

    x.add(v);

    if ( x.y > height) {
      x.y = height;
      v.y = 0;
    }

    v.x = 0;
  }
}
