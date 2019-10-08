float g = 0.6;

PImage mol1;
PImage mol2;

ball b;
slime s;

int score1;
int score2;


void setup() {
  size(1600, 900);
  b = new ball();
  s = new slime();

}

  mol1 = loadImage("Goal1.png");
  mol2 = loadImage("Goal2.png");

  score1 = 0;
  score2 = 0;
}

void draw() {
  background(230, 240, 255);
  image(mol1, 0, height - 230, 100, 230);
  image(mol2, width-100, height-230, 100, 230);

}

void draw() {
  background(230, 240, 255);
  image(mol1, 0, height - 230, 100, 230);
  image(mol2, width-100, height-230, 100, 230);
 
  textAlign(CENTER);
  fill(0);
  String score1 = "TEST1";
  String score2 = "TEST2";
  textSize(32); 
  text(score1, width/2-width/3, 100);
  text(score2, width/2+width/3, 100);



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
