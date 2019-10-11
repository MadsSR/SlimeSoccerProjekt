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
<<<<<<< Updated upstream

=======
  s2=new slime();
>>>>>>> Stashed changes

  mol1 = loadImage("Goal1.png");
  mol2 = loadImage("Goal2.png");

  score1 = 0;
  score2 = 0;
<<<<<<< Updated upstream
=======

  s2.x = new PVector(width-100, 100);
  s2.sc = color(0, 0, 255);
  

>>>>>>> Stashed changes
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

  s.render();
  b.render();



  s.update();
  b.update();

     fill(255);
    ellipse(s2.x.x-30, s2.x.y-40, 20, 20);
    fill(0);
    ellipse(s2.x.x-30+s2.p1ex+s2.dist, s2.x.y-50+(map(b.x.y, 0, height, 0, 10)), 10, 10);


  image(mol1, 0, height - 230, 100, 230);
  image(mol2, width-100, height-230, 100, 230);
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
<<<<<<< Updated upstream
=======
  if (keyCode==UP) {
    s2.jump = true;
  }
  if (keyCode ==LEFT) {
    s2.moveLeft = true;
  }
  if (keyCode ==RIGHT ) {
    s2.moveRight = true;
  }
>>>>>>> Stashed changes
}

void keyReleased() {
  if (key == 'a') {
    s.moveLeft = false;
  }
  if (key == 'd') {
    s.moveRight = false;
  }
<<<<<<< Updated upstream
=======
  if (keyCode == LEFT) {
    s2.moveLeft = false;
  }
  if (keyCode == RIGHT) {
    s2.moveRight = false;
  }
>>>>>>> Stashed changes
}
