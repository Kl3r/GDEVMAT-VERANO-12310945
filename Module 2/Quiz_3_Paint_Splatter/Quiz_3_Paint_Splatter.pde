void setup() {
  size(2560, 1570, P3D); // window size for 16:10
  camera(0, 0, -(height / 2.0) / tan(PI * 30.0 / 180.0), 0, 0, 0, 0, -1, 0);
  background(0);
}

void draw() {
  int randomPaint = 10;

  for (int i = 0; i < randomPaint; i++) {
    
    float gaussian = randomGaussian();
    float standardDeviation = 500;
    float mean = width / 2;
    float x = standardDeviation * gaussian + mean;
    
    //size
    float gaussianSize = randomGaussian();
    float standardDeviationSize = 20;
    float meanSize = 30;
    float circleSize = standardDeviationSize * gaussianSize + meanSize;

    circleSize = max(circleSize, 5); 
    color rgb = color(random(256), random(256), random(256), random(10, 101)); //rgb, transparency
     
    x = constrain(x, 0, width); // x
    

    float y = random(height); // y
    
    

    noStroke();
    fill(255, 10);
    fill (rgb);
    circle(x, y, 30);
  }
}
