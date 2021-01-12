int x = 10;
int y = 100;
int poleX = 500;
int velocity = 50;
int gravity = 3;
int pipeWidth = 100;
int pipeGap = 100;
int upperPipeHeight = (int) random(100, 400);
int lowerPipeHeight = upperPipeHeight + pipeGap;
void teleportPipes() {
  if (poleX <= -100) {
    poleX = 800;
    upperPipeHeight = (int) random(100, 400);
    lowerPipeHeight = upperPipeHeight + pipeGap;
  }
}

void mousePressed() {
  y -= velocity;
}
void setup() {
  size(800, 600);
}
void draw() {
  background(#00ACFF);
  fill(#FAFF00);
  stroke(#000000);
  ellipse(x, y, 20, 20);
  fill(#03FF4C);
  rect(poleX, 0, pipeWidth, upperPipeHeight);
  rect(poleX, lowerPipeHeight, pipeWidth, height);
  poleX -= 5;
  y += gravity;
  teleportPipes();
  if (intersectsPipes()) {
    noLoop();
  }
}
boolean intersectsPipes() { 
  if (y < upperPipeHeight && x > poleX && x < (poleX+pipeWidth)) {
    return true;
  } else if (y > lowerPipeHeight && x > poleX && x < (poleX+pipeWidth)) {
    return true;
  } else { 
    return false;
  }
}
