void setup ()
{
  size(2560, 1570, P3D); // window size for 16:10
  camera(0,0,-(height/2.0) / tan(PI*30.0 / 180.0), 0, 0, 0, 0, -1, 0);
}

Biased myBiased = new Biased();// mr biased
Walker myWalker = new Walker(); // creates an instance of our walker class here in sketch
void draw()
{
  //background(0, 0, 0); // grey
//int rng = int(random(5)); // generates random value from 0 to 5
//println(rng);


//walker spawner
myWalker.randomWalk();
myWalker.render();

//biased spawner
myBiased.render();
myBiased.randomWalkBiased();
}
