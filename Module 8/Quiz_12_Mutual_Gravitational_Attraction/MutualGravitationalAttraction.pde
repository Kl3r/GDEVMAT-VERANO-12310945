Walker[] bigMatter = new Walker[5];
Walker[] smallMatter = new Walker[5];

void setup() {
  size(1680, 1050, P3D); // window size for 16:10 but minimize
  camera(0, 0, -(height / 2.0) / tan(PI * 30.0 / 180.0), 0, 0, 0, 0, -1, 0);
    for (int i = 0; i < bigMatter.length; i++) {
    
      //big walker
    bigMatter[i] = new Walker();
    bigMatter[i].position = new PVector(random(-600, 500), random(-500, 700));
    bigMatter[i].mass = random (20,30); //rng size
    bigMatter[i].scale = bigMatter[i].mass * 10;
  }
  //smol walker
  for (int i = 0; i < smallMatter.length; i++) {
    smallMatter[i] = new Walker();
    smallMatter[i].position = new PVector(random(-600, 500), random(-500, 700));
    smallMatter[i].mass = random(1,10);  //rng size
    smallMatter[i].scale = smallMatter[i].mass * 10;
  }
}


void draw() {
  background(255);
    for (Walker big : bigMatter) {
    big.update();
    big.render();
  }
  
  for (Walker small : smallMatter) {
    small.update();
    small.render();
    
    for (Walker big : bigMatter) {
      small.applyForce(big.calculateAttraction(small));
      big.applyForce(small.calculateAttraction(big));
    }
  }
}
