float g = 0.6;

PImage mol1;
PImage mol2;

ball b;
slime s;

int score1;
int score2;
int begin; 
int duration;
int time;


void setup() {
  size(1600, 900);
  b = new ball();
  s = new slime();


  mol1 = loadImage("Goal1.png");
  mol2 = loadImage("Goal2.png");

  score1 = 0;
  score2 = 0;

  textSize(50);
  fill(0);

  begin = millis();
  time = duration = 6;
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

  image(mol1, 0, height - 230, 100, 230);
  image(mol2, width-100, height-230, 100, 230);
  
  if (time > 0)  time = duration - (millis() - begin)/1000;
  textAlign(CENTER);
  text(time, 800, 100, 10);
  
  if (time == 0) frameRate(0); {
  if (score1 < score2); {
   textAlign(CENTER);
   textSize(50);
   fill(0);
   text("Slime 1 vinder", width/2, 300);
  }
  }  
  
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
