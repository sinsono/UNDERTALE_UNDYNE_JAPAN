PImage title;
String name[];
char keydata=' ';
int fillc=0;
int fillc1=0;

void title()
{
  imageMode(CENTER);
  image(title, width/2, height/2, width+200, height);
  imageMode(CORNER);
  text("yourname:", 300, 700);


  if (fillc1%2==0)
    stroke(255);
  else
    stroke(0);
  strokeWeight(3);
  line(570, 660, 570, 710);
  fillc++;
  if (fillc%10==0)
  {
    fillc1++;
  }
}
