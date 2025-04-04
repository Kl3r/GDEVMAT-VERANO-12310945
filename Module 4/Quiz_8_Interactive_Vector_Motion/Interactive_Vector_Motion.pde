int myWalkers = 100;
Walker[] walkers = new Walker[myWalkers];
PVector blackHole;


void setup() {
  size(1680, 1050, P3D); // window size for 16:10 but minimize
  camera(0, 0, -(height / 2.0) / tan(PI * 30.0 / 180.0), 0, 0, 0, 0, -1, 0);
  blackHole = new PVector(random(Window.left, Window.right), random(Window.bottom, Window.top));

  for (int i = 0; i < myWalkers; i++) {
    walkers[i] = new Walker();
  }
}

void draw() {
  background(255);
  
  //output
  for (Walker miniWalkers : walkers) {
    miniWalkers.update();
    miniWalkers.render();
  }
  
  //speed
  if (frameCount % 300 == 0) {
    println("Speed: " + frameCount);
  }
}
