
Walker[] walkers = new Walker[10];
//Walker heavyWalker = new Walker();
PVector wind = new PVector (0, -0.4);
PVector gravity = new PVector(0.15, 0);

void setup() {
  size(1680, 1050, P3D); // window size for 16:10 but minimize
  camera(0, 0, -(height / 2.0) / tan(PI * 30.0 / 180.0), 0, 0, 0, 0, -1, 0);
  //heavyWalker.position.y = -50;
  //heavyWalker.mass = 5;
  for (int i = 0; i < walkers.length; i++) {
    walkers[i] = new Walker();
    walkers[i].mass = i + 1;
    walkers[i].scale = walkers[i].mass * 15;

  }
}


void draw() {
  background(80);
  
  for (Walker walker : walkers) {
    walker.applyForce(wind);
    walker.applyForce(gravity);
    walker.update();
    walker.render();
  //heavyWalker.render();
  //heavyWalker.update();
  //heavyWalker.applyForce(wind);
    // newton 3rd law
  if (walker.position.y >= Window.top || walker.position.y <= Window.bottom) {
       walker.velocity.y *= -30;
   }
  if (walker.position.x >= Window.right || walker.position.x <= Window.left) {
       walker.velocity.x *= -60;
    }
  }
}
