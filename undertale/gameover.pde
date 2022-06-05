PImage over, over1, over2;
PImage bh;//broken heart
float overtint=0;
float x11=615;
float x22=615;

void gameover()
{
  if (mousePressed)
    noLoop();
  Time++;  
  println(Time);

  if (Time>=900)
  {
    gv.close();
    Time=0;
    scene=0;
  }
  gv.play();

  if (Time>=344)
  {
    image(over1, 430, 600, 370, 100);
    fill(0);
    rect(x11, 625, 370, 50);
    rect(x22, 675, 370, 50);
    x11+=5;
    if (x11>=985)
      x22+=5;
  }

  if (Time>=200)
  {
    imageMode(CENTER);
    tint(overtint);
    image(over, width/2, 300, 800, 350);
    imageMode(CORNER);

    if (overtint>=255)
      overtint=255;
    else
      overtint+=3;
  }

  if (Time>=100)
  {
    for (int i=0; i<5; i++)
    {
      spread=spr[i];
      spread.spread();
      //spread.move();
    }

    spr[5].move();
  } else
  {
    image(bh, gx, gy, 27, 27);
  }
}
