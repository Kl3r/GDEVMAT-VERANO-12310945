void setup() {
  size(2560, 1570, P3D); // window size for 16:10
  camera(0, 0, -(height / 2.0) / tan(PI * 30.0 / 180.0), 0, 0, 0, 0, -1, 0);
  background(255,255,255);
}

Walker perlinWalker= new Walker();

void draw()
{
  color rgb = color(random(256), random(256), random(256)); //rgb
  fill(0);
  fill(rgb);
  noStroke();
  perlinWalker.render();
  perlinWalker.perlinWalk();
}
