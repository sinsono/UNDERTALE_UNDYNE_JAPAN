final int bbb=3;

float stint=5.5;
float sdeg=0;
float sdeg2;
float ddeg2;
float sspeed=10;
float bet=70;
float cx, cy, cz;

int ei1, ei2;


void battle14()
{
  switch(feel) {


  case bb:

    hmove();

    for (int i=i1; i<i2; i++)
    {
      ta[i]=new Tama(gx+13.5, gy+13.5, sspeed, radians(60*i+sdeg));
      ta[i].ddeg=radians(60*i)+radians(-90+sdeg);
      ddeg2=ta[i2-6].ddeg;
      ta[i].y=-200;
      ta[i].tint=0;
      ta[i].yc=0;
      if (i2<=30)
        sdeg2=0.12;
      i1++;
    }


    for (int i=ei1; i<ei2; i++)
    {
      tama=ta[i];

      zx.set(i, tama.fx+200*cos(radians(60*i+sdeg)));
      zy.set(i, tama.fy+200*sin(radians(60*i+sdeg)));
      cx=tama.fx-zx.get(i);
      cy=tama.fy-zy.get(i);
      cz=sqrt(sq(cx)+sq(cy));
      speedx.set(i, cx/cz*sspeed);
      speedy.set(i, cy/cz*sspeed);

      pushMatrix();
      translate(tama.fx+200*cos(radians(60*i+sdeg)), tama.fy+200*sin(radians(60*i+sdeg)));
      tint(tama.tint);
      rotate(tama.ddeg);
      imageMode(CENTER);
      image(white, 0, 0, 30, 90);
      imageMode(CORNER);
      popMatrix();

      if (abs(ta[ei1].ddeg-ddeg2)>=radians(180))
      {
        if (ta[ei1].timem>=bet)
        {
          feel=bbb;
        } else
        {
          ta[ei1].tint=255;
          ta[ei1+1].tint=255;
          ta[ei1+2].tint=255;
          ta[ei1+3].tint=255;
          ta[ei1+4].tint=255;
          ta[ei1+5].tint=255;
          ta[ei1].timem++;
        }
      } else
      {
        tama.ddeg+=sdeg2;
        tama.tint+=stint;
      }
    }


    for (int i=ii; i<iii; i++)
    {
      tama=ta[i];
      tama.whi();


      if (dist(gx+13.5, gy+13.5, zx.get(i), zy.get(i))<=23)
      {
        hit=1;
      }

      /*fill(255, 0, 0);
       ellipse(zx.get(i), zy.get(i), 33, 33);*/
      zx.set(i, zx.get(i)+speedx.get(i));
      zy.set(i, zy.get(i)+speedy.get(i));

      if (ta[ii].y>=100)
      {
        tama.yc=1;
        tama.tint-=stint*2;
        if (ta[ii].tint<=0)
        {
          ii+=6;
        }
      }

      if (ta[ii].tint>=255 || tama.yc==1)
        tama.move();
    }

    break;


  case bbb:

    iii+=6;
    i2+=6;
    ei1+=6;
    ei2+=6;
    sdeg+=50;
    if (sdeg2<=0.2)
      sdeg2+=0.02;
    if (i1>=24 && i1<=54)
    {
      sspeed+=0.3;
      bet-=5;
      stint+=2;
    }
    feel=bb;

    break;


  case finish:

    if (t<=30)
    {
      t++;
    } else {
      Rect.smalg();
    }

    break;
  }
}
