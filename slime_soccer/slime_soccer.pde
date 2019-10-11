float g = 0.6;

PImage mol1;
PImage mol2;

ball b;
slime s1;
slime s2;
int score1;
int score2;


void setup() {
  size(1300, 800);
  b = new ball();
  s1 = new slime();
  s2=new slime();

  mol1 = loadImage("Goal1.png");
  mol2 = loadImage("Goal2.png");

  score1 = 0;
  score2 = 0;
}


void draw() {
  background(230, 240, 255);

  //SCORE
  textAlign(CENTER);
  fill(0);
  textSize(32); 
  text(score1, width/2-width/4, 100);
  text(score2, width/2+width/4, 100);
  textSize(24);
  text("PLAYER 1", width/2-width/3, 97);
  text("PLAYER 2", width/2+width/3, 97);

  s1.render();
  s2.render();
  b.render();

  s1.update();
  s2.update();
  b.update();

  image(mol1, 0, height - 230, 100, 230);
  image(mol2, width-100, height-230, 100, 230);
}

void keyPressed() {
  if (key == 'w') {
    s1.jump = true;
  }
  if (key == 'a') {
    s1.moveLeft = true;
  }
  if (key == 'd') {
    s1.moveRight = true;
  }
  if (keyCode==UP) {
    s2.jump = true;
  }
  if (keyCode ==LEFT) {
    s2.moveLeft = true;
  }
  if (keyCode ==RIGHT ) {
    s2.moveRight = true;
  }
}

void keyReleased() {
  if (key == 'a') {
    s1.moveLeft = false;
  }
  if (key == 'd') {
    s1.moveRight = false;
  }
  if (keyCode == LEFT) {
    s2.moveLeft = false;
  }
  if (keyCode == RIGHT) {
    s2.moveRight = false;
  }
}
