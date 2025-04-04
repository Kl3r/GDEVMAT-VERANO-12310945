
int myWalkers = 100;
Walker[] walkers = new Walker[myWalkers];
PVector blackHole;
float walkerSize = 50; // change the size of black hole

void setup() {
  size(1680, 1050, P3D); // window size for 16:10 but minimize
  camera(0, 0, -(height / 2.0) / tan(PI * 30.0 / 180.0), 0, 0, 0, 0, -1, 0);
  blackHole = new PVector(random(Window.left, Window.right), random(Window.bottom, Window.top));

  for (int i = 0; i < myWalkers; i++) {
    walkers[i] = new Walker();
  }
}

void draw() {
  background(0);
  //output
  for (Walker blackHole : walkers) {
    blackHole.update();
    blackHole.display();
  }
  //walker
  fill(255);
  circle(blackHole.x, blackHole.y, walkerSize);
  
  //seconds of pull
  if (frameCount % 500 == 0) {
    resetPosition();
  }
}

void resetPosition() {
  blackHole.set(random(Window.left, Window.right), random(Window.top, Window.bottom));
  for (Walker blackHole : walkers) {
    blackHole.reset();
  }
}
