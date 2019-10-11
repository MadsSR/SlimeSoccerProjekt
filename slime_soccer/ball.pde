class ball {
  PVector x, v;
  float r;

  ball() {
    x = new PVector(width/2, height/2);
    v = new PVector(0, 0);
    r = 20;
  }

  void render() {
    noStroke();
    fill(255, 0, 0);
    ellipse(x.x, x.y, 2*r, 2*r);

    //SCORE

    if (x.x <= 100-r && x.y > height-230) {
      score2 += 1;
      x.x = width/2;
      x.y = 400;
      //      delay(1000);
      v.x = 0;
      v.y = 0;
    }
    if (x.x >= width-100+r && x.y + r > height-230) {
      score1 += 1;
      x.x = width/2;
      x.y = 400;
      //    delay(1000);
      v.x = 0;
      v.y = 0;
    }
  }

  void update() {
    if (dist(x.x, x.y, s1.x.x, s1.x.y) < r + s1.r) {
      bounce(s1);
    } else {
      v.mult(0.99);
      v.y += g;
    }

    if (x.y == 0) {
      v.mult(0.7);
    }

    v.limit(20);
    x.add(v);

    if (x.y + r > height) {
      x.y = height - r;
      v.y = -v.y;
    }
    if (x.y + r <= 1) {
      x.y = 0 + r;
      v.y = -v.y;
    }
    if (x.x + r >= width) {
      x.x = width - r;
      v.x = -v.x;
    }
    if (x.x + r < 1) {
      x.x = 0 + r;
      v.x = -v.x;
    }

    if (x.x <= 100 && x.y +r == height-230) {
      v.y = -v.y;
    }
  }
  void bounce(slime s) {
    PVector n = PVector.sub(x, s.x);
    float distanceCor = r + s.r - n.mag();
    n.normalize();
    v.sub(PVector.mult(n, 2*PVector.dot(n, v)));
    x.add(n.setMag(distanceCor));
    x.add(s.v);
    v.mult(1.5);
  }
}
