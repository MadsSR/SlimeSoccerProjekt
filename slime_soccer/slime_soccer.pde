float g = 0.6;
ball b;
slime s;

void setup() {
  size(1600, 900);
  b = new ball();
  s = new slime();
}

void draw() {
  background(255);

  s.render();
  b.render();

  s.update();
  b.update();
}

void keyPressed() {
  if (key == 'w') {
    s.jump = true;
  }
  if (key == 'a') {
    s.moveLeft = true;
  }
  if (key == 'd') {
    s.moveRight = true;
  }
}

void keyReleased() {
  if (key == 'a') {
    s.moveLeft = false;
  }
  if (key == 'd') {
    s.moveRight = false;
  }
}
