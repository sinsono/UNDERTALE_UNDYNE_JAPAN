ArrayList <Integer> dalist;

PImage d1, d2, d3, d4, d5, d6;
PImage da1, da2, da3, da4, da5, da6, da7, da8, da9, da0;
int damages;
int movec=0;
int s=2;
int size=130;
int yyyyy=90;
int thou;
int hund;
int ten;
int one;
int dac1=0;
int bartint=255;
int barc1=0;
int barc2=0;
float uhb;
float dec=0;

void motion()
{
  if (tint<=0)
  {
  } else {
    tint(tint);
    image(az, 100, height/1.73, 1000, 185);
    noTint();
  }

  if (movec<=100)
  {
    if (movec<=s)
      image(d1, width/2-50, 200, size, size+yyyyy);
    else
      if (movec<=s*2)
        image(d2, width/2-30, 200, size/2, size/2+yyyyy);
      else
        if (movec<=s*5)
          image(d3, width/2-50, 200, size, size+yyyyy);
        else
          if (movec<=s*6)
            image(d4, width/2-50, 210, size, size+yyyyy+20);
          else
            if (movec<=s*7)
              image(d5, width/2-50, 210, size, size+yyyyy+20);
            else
              if (movec<=s*8)
                image(d6, width/2-30, 220, size-30, size+yyyyy+20);
              else
                if (movec<100)
                {
                  uhb=map(uhp, 0, 40000, 0, 340);
                  fill(#17D34E);
                  rect(width/2, 400, 340, 20);
                  rectMode(CORNER);
                  fill(#5F5A5A);
                  rect(width/2+170, 390, dec, 20);
                  rectMode(CENTER);
                  if (dec<=uhb-340)
                    dec=uhb-340;
                  else
                    dec-=0.5;

                  if (dac1==0)
                  {
                    if (damage/1000<1)
                    {
                      dalist.add(floor(damage/100));
                      dalist.add(floor(((damage-dalist.get(0)*100))/10));
                      dalist.add((damage-(dalist.get(0)*100+dalist.get(1)*10)));
                    } else
                    {
                      dalist.add(1);
                      dalist.add(floor((damage-1000)/100));
                      dalist.add(floor(((damage-1000-dalist.get(1)*100))/10));
                      dalist.add((damage-1000-dalist.get(1)*100-dalist.get(2)*10));
                    }
                    dac1++;
                  }

                  if (damage/1000<1)
                  {
                    for (int i=0; i<3; i++)
                    {
                      if (dalist.get(i)==0)
                        image(da0, width/2-80+i*55, 300, 50, 50);
                      else
                        if (dalist.get(i)==1)
                          image(da1, width/2-80+i*55, 300, 50, 50);
                        else
                          if (dalist.get(i)==2)
                            image(da2, width/2-80+i*55, 300, 50, 50);
                          else
                            if (dalist.get(i)==3)
                              image(da3, width/2-80+i*55, 300, 50, 50);
                            else
                              if (dalist.get(i)==4)
                                image(da4, width/2-80+i*55, 300, 50, 50);
                              else
                                if (dalist.get(i)==5)
                                  image(da5, width/2-80+i*55, 300, 50, 50);
                                else
                                  if (dalist.get(i)==6)
                                    image(da6, width/2-80+i*55, 300, 50, 50);
                                  else
                                    if (dalist.get(i)==7)
                                      image(da7, width/2-80+i*55, 300, 50, 50);
                                    else
                                      if (dalist.get(i)==8)
                                        image(da8, width/2-80+i*55, 300, 50, 50);
                                      else
                                        if (dalist.get(i)==9)
                                          image(da9, width/2-80+i*55, 300, 50, 50);
                    }
                  } else
                  {
                    for (int i=0; i<4; i++)
                    {
                      if (dalist.get(i)==0)
                        image(da0, width/2-105+i*55, 300, 50, 50);
                      else
                        if (dalist.get(i)==1)
                          image(da1, width/2-100, 300, 50, 50);
                        else
                          if (dalist.get(i)==2)
                            image(da2, width/2-105+i*55, 300, 50, 50);
                          else
                            if (dalist.get(i)==3)
                              image(da3, width/2-105+i*55, 300, 50, 50);
                            else
                              if (dalist.get(i)==4)
                                image(da4, width/2-105+i*55, 300, 50, 50);
                              else
                                if (dalist.get(i)==5)
                                  image(da5, width/2-105+i*55, 300, 50, 50);
                                else
                                  if (dalist.get(i)==6)
                                    image(da6, width/2-105+i*55, 300, 50, 50);
                                  else
                                    if (dalist.get(i)==7)
                                      image(da7, width/2-105+i*55, 300, 50, 50);
                                    else
                                      if (dalist.get(i)==8)
                                        image(da8, width/2-105+i*55, 300, 50, 50);
                                      else
                                        if (dalist.get(i)==9)
                                          image(da9, width/2-105+i*55, 300, 50, 50);
                    }
                  }
                }
    movec++;
    tint-=15;

    if (barc2>=2)
    {
      barc1++;
      barc2=0;
    }

    if (barc1%2==0)
      bartint=255;
    else
      bartint=0;
    barc2++;

    stroke(0);
    strokeWeight(3);
    fill(bartint);
    rect(bx, height/1.47, 13, 195);
  } else {
    movec=0;
    battlec++;
    dalist.clear();
    status=swi;
  }
}
