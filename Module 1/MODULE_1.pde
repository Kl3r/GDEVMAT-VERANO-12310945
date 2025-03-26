
void setup ()
{
  size(2560, 1570, P3D); // window size for 16:10
  camera(0,0,-(height/2.0) / tan(PI*30.0 / 180.0), 0, 0, 0, 0, -1, 0);
}
// this is same as a update in unity / and main income to c++
void draw ()
{
  
  background(128, 128, 128); // grey
  //circle(0, 0, 25);
  
  //strokeWeight(2); //thickness (size)
  //color white = color(255, 255, 255); // color
  //fill(white); 
  //stroke(white); // what the color will be
  //line(-75, -75, 75, 75); //
  
//  strokeWeight(1);
//color white = color (255, 255, 255);
//fill(white);
//stroke (white);
//line (300, 0, -300, 0);
//line(0, -300, 0, 300);

drawCartesianPlane();
drawLinearFunction();
drawQuadraticFunction();
drawCircle();
drawSineWave();
}

void drawCartesianPlane()
{
  strokeWeight(1);
  color black = color (0, 0, 0);
  fill(black);
  stroke (black);
  line (300, 0, -300, 0);
  line(0, -300, 0, 300);
    for (int i = -300; i <= 300; i += 10)
  {
    line(i, -2, i, 2);
    line(-2, 1, 2, i);
  }

}

void drawLinearFunction ()
{
  //f(x) = x + 2
 // Let x be 4, then y = 6 (4,6);
  //Let x be -5, then y = -3 (-5,-3);
  
  color lightBlue = color (81, 182, 242);
  fill(lightBlue);
  noStroke();
  for (int x = -200; x <= 200; x++)
   {
    circle(x, x + 2, 5);
     }
}
 
void drawQuadraticFunction()
{
 // f(x) = x^2 + 2x - 5
 // Let x be 2, then y = 3
 //Let x be -1, then y = -6
 
  color lightOrange = color (226, 182, 136);
  fill(lightOrange);
  stroke(lightOrange);
  noStroke();
  for (float x = -300; x <= 300; x += 0.1f)
  {
    circle (x * 10, (float)Math.pow(x, 2) + (2 * x) - 5, 5);
  }
}

void drawCircle()
{
  color lightViolet = color (146, 149, 252);
  fill (lightViolet);
  stroke (lightViolet);
  float radius = 50;
  for (int x = 0; x <= 360; x++)
  {
    circle((float) Math.cos(x) * radius, (float) Math.sin(x) * radius, 5);
  }
}

void drawSineWave()
{
  color lightGreen = color(173, 236, 136);
  fill(lightGreen);
  stroke(lightGreen);
  float amplitude = 30; //height from the center
  float frequency = 0.11; // the more the number the wave will getting smaller
  
  for (float x = -240; x <= 240; x += 1) // -x and x change length
  {
    
    float y = amplitude * sin(frequency * x);
    circle(x, y, 5); // point of the sine wave
  }
}
