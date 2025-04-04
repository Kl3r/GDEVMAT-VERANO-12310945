public class Walker {
  PVector direction;
  PVector velocity;
  PVector position;
  float size;
  color randomColor;

  Walker() {
     movingWalkers();
  }

  void movingWalkers() {
    position = new PVector(random(0, width), random(0, height)); //window 
    velocity = new PVector(0, 0); // initial velocity is zero
    size = random(5, 20); //walker size
    randomColor = color(random(255), random(255), random(255)); //rgb
  }
    //mouse axis
    void update() {
    PVector mouseAxis = new PVector(mouseX, mouseY);
    PVector direction = PVector.sub(mouseAxis, position);
    
    direction.normalize();
    direction.mult(0.2); 

    velocity.add(direction);
    position.add(velocity);
  }
  
  //mini walker
  void render() {
    fill(randomColor);
    stroke(300);
    circle(position.x, position.y, size);
  }
}
