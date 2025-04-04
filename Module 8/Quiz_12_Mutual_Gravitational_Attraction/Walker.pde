public class Walker {
  public PVector position = new PVector();
  public PVector velocity = new PVector();
  public PVector acceleration = new PVector();
  public float mass = 1;
  public float velocityLimit = 10;
  public float scale = 15;
  public color walkerColor;
  public float gravitationalConstant = 1;
  

  public Walker() {
    this.position = new PVector(-500, 200);
    this.walkerColor = color(random(255), random(255), random(255), 100);
  }
  // newton 2nd law
  public void applyForce(PVector force) {
    PVector f = PVector.div(force, this.mass);
    this.acceleration.add(f);
  }
  
  public void update() {
    this.velocity.add(this.acceleration);
    this.velocity.limit(velocityLimit);
    this.position.add(this.velocity);
    this.acceleration.mult(0);
  }
  
  public void render() {
    fill(walkerColor);
    noStroke();
    circle(position.x, position.y, scale);
  }
  
  public PVector calculateAttraction(Walker walker)
  {
    PVector force = PVector.sub(this.position, walker.position);
    float distance = force.mag();
    force.normalize();
    
    distance = constrain(distance, 5, 25);
    
    float strength = (this.gravitationalConstant * this.mass * walker.mass) / (distance * distance);
    force.mult(strength);
    return force;
  }
}
