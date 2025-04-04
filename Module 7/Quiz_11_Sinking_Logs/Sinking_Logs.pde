ArrayList<Walker> walkers = new ArrayList<Walker>();
Liquid ocean = new Liquid (0, -100, Window.right, Window.bottom, 0.1f);

void setup() {
  size(1680, 1050, P3D); // window size for 16:10 but minimize
  camera(0, 0, -(height / 2.0) / tan(PI * 30.0 / 180.0), 0, 0, 0, 0, -1, 0);
  for (int i = 0; i < 10; i++) {
    Walker myWalker = new Walker();
    myWalker.position = new PVector(-500 + i * 100, 300);
    myWalker.mass = random(1, 10);
    myWalker.scale = myWalker.mass * 20;
    walkers.add(myWalker);
  }
}


void draw() {
  background(255);
  ocean.render();
  
  for (Walker myWalker : walkers) {
    myWalker.render();
    myWalker.update();
    
    PVector gravity = new PVector(0, -0.25 * myWalker.mass);
    myWalker.applyForce(gravity);
    
    float c = 0.1f;
    float normal = 1;
    float frictionMagnitude = c * normal;
    PVector friction = myWalker.velocity.copy();
    myWalker.applyForce(friction.mult(-1).normalize().mult(frictionMagnitude));
    
    if (myWalker.position.y <= Window.bottom) {
      myWalker.position.y = Window.bottom;
      myWalker.velocity.y *= -1;
    }
    
    if (ocean.isColliderWith(myWalker)) {
      PVector dragForce = ocean.calculateDragForce(myWalker);
      myWalker.applyForce(dragForce);
    }
  }
}
