float g = 0.1;
PImage mol1;
PImage mol2;
ball b;
slime s;

void setup() {
  size(1600, 900);
  b = new ball();
  s = new slime();
  mol1 = loadImage("Goal1.png");
  mol2 = loadImage("Goal2.png");
}

void draw() {
  background(255);
  image(mol1,0,height - 230,100,230);
  image(mol2,width-100,height-230,100,230);
  

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
