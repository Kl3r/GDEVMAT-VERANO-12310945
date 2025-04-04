Walker[] walkers = new Walker[8];
//Walker heavyWalker = new Walker();
//PVector wind = new PVector (0, -0.4);
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
    walkers[i].position.y = 1 * (width / 14) * (i -4); //walkers width
  }
}

void draw() {
  background(80);
  stroke(0);
  line(width / 50, Window.top, width / 50, Window.bottom);

  for (Walker walker : walkers) {
    // Friction = -1 * mew * N * v
    float mew = 0.1f;
    float normal = 1;
    float frictionMagnitude = mew * normal;
    PVector friction = walker.velocity.copy(); //copy copies the current velocity of our walker
    friction.mult(-1);
    friction.normalize();
    friction.mult(frictionMagnitude);
    walker.applyForce(friction);
    
    PVector gravity = new PVector(1, 0);
    //walker.applyForce(wind);
    walker.applyForce(gravity);
    walker.update();
    walker.render();
  //heavyWalker.render();
  //heavyWalker.update();
  //heavyWalker.applyForce(wind);
    // newton 3rd law
    if (walker.position.x >= Window.right || walker.position.x <= Window.left) {
      walker.velocity.x *= -60;
    }
    
    if (walker.position.x >= width / 50) {

      walker.velocity.x = 0;
    }
  }
}
