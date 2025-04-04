void setup() {
  size(2560, 1570, P3D); // window size for 16:10
  camera(0, 0, -(height / 2.0) / tan(PI * 30.0 / 180.0), 0, 0, 0, 0, -1, 0);

}

PVector position = new PVector();
PVector speed = new PVector (5, 8);

void draw() {
  background(255,255,255);
  Walker walker = new Walker(position, speed);
  walker.moveAndBounce();
  walker.ball();
}
