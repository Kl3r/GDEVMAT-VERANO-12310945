public class Walker
{
  public float x;
  public float y;
  public float tx = 0, ty = 10000;
  public float thickness;
  public float thicknessLevel = 0;
  
  
  void render()
  {
    circle(x, y, thickness);
  }
  
   void perlinWalk()
  {
    x = map(noise(tx), 0, 1, -640, 640);
    y = map(noise(ty), 0, 1, -360, 360);
    tx += 0.01f;
    ty += 0.01f;
    thickness = map(noise(thicknessLevel), 0, 1, 5, 150);
    thicknessLevel += 0.01f;
  }
}
