class Walker {
  PVector direction;
  float size;
  color randomColor;

  Walker() {
    reset();
  }

  void reset() {
    direction = new PVector(random(0, width), random(0, height)); //window 
    size = random(5, 20); //walker size
    randomColor = color(random(255), random(255), random(255)); //rgb
  }

  void update() {
    PVector axis = PVector.sub(blackHole, direction);
    axis.normalize(); 
    direction.add(PVector.mult(axis, 5));// speed
  }
  //mini walker
  void display() {
    fill(randomColor);
    noStroke();
    circle(direction.x, direction.y, size);
  }
}
