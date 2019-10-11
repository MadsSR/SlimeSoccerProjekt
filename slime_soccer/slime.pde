class slime {
  PVector x, v;
  float r;
  boolean jump, moveLeft, moveRight;
  float dist;
  int p1ex;
  int p1ey;


  slime() {
    r = 75;
    x = new PVector(100, 100);
    v = new PVector(0, 0);
    jump = false;
    moveLeft = false;
    moveRight = false;
  }

  void render() {
    dist = -5;
    fill(0, 255, 0);
    arc(x.x, x.y, 2*r, 2*r, PI, TWO_PI, CHORD);
    fill(255);
    ellipse(x.x+30, x.y-40, 20, 20);
    fill(0);
    ellipse(x.x+35+p1ex+dist, x.y-50+(map(b.x.y, 0, height, 0, 10)), 10, 10);
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
    v.x =0;

    if (x.x > width-r) {
      x.x = width-r;
    }
    if (x.x < 0+r) {
      x.x = r;
    }
    if (x.x+r > b.x.x) {
      p1ex = -5;
    } else {
      p1ex = 5;

      if (x.x < b.x.x+5 && x.x > b.x.x-5) {
      dist = dist(b.x.x, b.x.x, x.x, x.x);
    } else {
      dist = -5;
    }
  }
}
}
