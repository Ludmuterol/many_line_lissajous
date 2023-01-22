static final int NUM_LINES = 20;
static final float SIZE = 1.5;
float t;

void setup()
{
  fullScreen();
  orientation(PORTRAIT);
  frameRate(30);
  strokeWeight(2);
  stroke(255);
}

void draw()
{
  background(20);
  translate(width / 2,height / 2);
  scale(2);
  for(int i = 0; i < NUM_LINES; i++)
  {
    line(x1(t + i * SIZE), y1(t + i * SIZE), x2(t + i * SIZE), y2(t + i * SIZE));
  }
  t += 0.4;
}

float x1(float t)
{
   return sin(t / 10) * 100 + sin(t / 15) * 100; 
}

float y1(float t)
{
   return cos(t / 10) * 100 + cos(t / 15) * 100; 
}

float x2(float t)
{
   return sin(t / 20) * 100 - sin(t / 15) * 100; 
}

float y2(float t)
{
   return cos(t / 20) * 100 + cos(t / 15) * 100; 
}
