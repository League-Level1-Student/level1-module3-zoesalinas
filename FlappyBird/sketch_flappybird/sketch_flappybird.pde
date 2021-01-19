PImage back;
PImage pipeBottom;
PImage pipeTop;
PImage bird;
PImage birdflap;
PImage birdfly;
int x = 10;
int y = 100;
int poleX = 500;
int poleY = -100;
int velocity = 50;
int gravity = 3;
int pipeWidth = 100;
int pipeGap = 175;
int frame = 0;
int pole2Y = poleY + 400 + pipeGap;
int score = 0;
boolean birdjumped = false;
int upperPipeHeight = (int) random(100, 400);
int lowerPipeHeight = upperPipeHeight + pipeGap;
void teleportPipes() {
  if (poleX <= -100) {
    poleX = 800;
    poleY = (int) random(-200, 0);
    pole2Y = poleY + 400 + pipeGap;
    score++;
  }
}

void mousePressed() {
  y -= velocity;
  birdjumped = true;
  frame = 0;
}
void setup() {
  size(800, 600);
  back = loadImage("flappyBackground.jpg");
  pipeBottom = loadImage("bottomPipe.png");
  pipeTop = loadImage("topPipe.png");
  bird = loadImage("bird.png");
  bird.resize(50, 50);
  birdflap = loadImage("flap.png");
  birdfly = loadImage("fly.png");
  birdflap.resize(50, 50);
  birdfly.resize(50, 50);
  back.resize(width, height);
}
void draw() {
  background(back);   
  fill(#FAFF00);
  stroke(#000000);
  if(frame < 3){
   image(birdfly, x, y); 
   birdjumped = false;
  }
  else if(frame%3 == 0){
   image(birdflap, x, y); 
  }
  else{
      image(bird, x, y);
  }
  frame++;
  fill(#03FF4C);
  image (pipeTop, poleX, poleY);
  image (pipeBottom, poleX, pole2Y);
  rect(0, 560, 790, 40);
  fill(#000000);
  textSize(40);
  text(score, 600, 50);
  poleX -= 5;
  y += gravity;
  teleportPipes();
  if (intersectsPipes()) {
    noLoop();
  }
  if (y + (20/2) > 560) {
    noLoop();
  }
}

boolean intersectsPipes() { 
  if (y < poleY+400 && x > poleX && x < (poleX+pipeWidth)) {
    return true;
  } else if (y > pole2Y && x > poleX && x < (poleX+pipeWidth)) {
    return true;
  } else { 
    return false;
  }
}
