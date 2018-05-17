
Star[] s = new Star[1000];

void setup()
{
  size(400,400);
  for(int i=0; i<s.length; i++)
    s[i] = new Star();
  surface.setResizable(true);
}

void draw()
{
  background(30,30,30);
  for(int i=0; i<s.length; i++)
    s[i].move();
}