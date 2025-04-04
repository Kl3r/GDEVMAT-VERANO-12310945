void setup() {
  size(2560, 1570, P3D); // window size for 16:10
  camera(0, 0, -(height / 2.0) / tan(PI * 30.0 / 180.0), 0, 0, 0, 0, -1, 0);
}

PVector mousePos() {
  float x = mouseX - width / 2.0;
  float y = (mouseY - height / 2.0);
  return new PVector(x, -y);
}

PVector handle() {
  return new PVector(0, 0);
}

void draw() {
  background(130);
  PVector mouse = mousePos();
  PVector handle = handle();
  
  // top saber
  stroke(0);
  strokeWeight(30); 
  line(handle.x, handle.y, mouse.x, mouse.y);

  //outer saber
  stroke(255, 0, 0);
  strokeWeight(15);
  line(handle.x, handle.y + 40, mouse.x, mouse.y); 
  
  //buttom saber
  stroke(0);
  strokeWeight(30); 
  tint(255, 127);
  line(handle.x, handle.y + 40, -mouse.x, -mouse.y);

  // outer saber
  stroke(255, 0, 0);
  strokeWeight(15);
  line(handle.x, handle.y, -mouse.x, -mouse.y);
  
  //handle
  stroke(0);
  strokeWeight(50);
  fill(100);
  rect(handle.x - 20, handle.y + 50, 35, 100); 
}
