PImage d1, d2, d3, d4, d5, d6;

int movec=0;
int s=5;
int size=100;
int yyyyy=50;

void motion()
{
  if (tint<=0)
  {
  } else {
    tint(tint);
    image(az, 100, height/1.73, 1000, 185);
    noTint();
  }

  if (movec<=180)
  {
    if (movec<=s)
      image(d1, width/2-30, 200, size, size+yyyyy);
    else
      if (movec<=s*2)
        image(d2, width/2-10, 200, size/2, size/2+yyyyy);
      else
        if (movec<=s*3)
          image(d3, width/2-30, 200, size, size+yyyyy);
        else
          if (movec<=s*4)
            image(d4, width/2-30, 200, size, size+yyyyy);
          else
            if (movec<=s*5)
              image(d5, width/2-30, 200, size, size+yyyyy);
            else
              if (movec<=s*6)
                image(d6, width/2-10, 220, size-30, size+yyyyy);
              else
                if (movec<180)
                  text(damage, width/2-30, 100);
    movec++;
    tint-=15;
  } else {
    movec=0;
    battlec++;
    status=swi;
  }
}
