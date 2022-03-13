FloatList zx;
FloatList zy;
FloatList speedx;
FloatList speedy;
int i1=0;
int i2=1;
float angle;
float vx, vy;
float dist;
float katei;

void battle4()
{
  switch(feel) {

  case bb:

    hmove();

    for (int i=i1; i<i2; i++)
    {
      tama=ta[i];

      if (i2>=19)
      {
      } else
        if (tama.tint>=60)
        {
          i2=i1+2;
        }
      if (tama.tint>=255)
      {
        i1++;
        iii++;
        tama.degc=1;
        dist=sqrt(sq(gx+13.5-tama.fx)+sq(gy+13.5-tama.fy));
        vx=gx+13.5-(tama.fx+((gx+12.5-tama.fx)/dist)*22);
        vy=gy+13.5-(tama.fy+12.5+((gy+13.5-tama.fy)/dist)*22);
        katei=sqrt(sq(vx)+sq(vy));
        speedx.set(i, 2*(vx/katei));
        speedy.set(i, 2*(vy/katei));
        zx.set(i, tama.fx+((gx+13.5-tama.fx+13.5)/dist)*22);
        zy.set(i, tama.fy+((gy+13.5-tama.fy)/dist)*22);
      } else
      {
        tama.whi();
        tama.degree+=0.1;
        tama.tint+=7;
      }
    }

    for (int i=ii; i<iii; i++)
    {
      if (dist(gx+13.5, gy+13.5, zx.get(i), zy.get(i))<=23)
      {
        hit=1;
      }

      if (ta[18].y>=400)
      {
        feel=finish;
      }
      tama=ta[i];
      tama.whi();
      tama.move();

      if (tama.speed<=8)
        tama.speed=tama.speed*1.03;

      /*fill(255, 0, 0);
      ellipse(zx.get(i), zy.get(i), 33, 33);*/
      zx.add(i, speedx.get(i));
      zy.add(i, speedy.get(i));

      if (sqrt(sq(speedx.get(i))+sq(speedy.get(i)))<=8)
      {
        speedx.add(i, speedx.get(i)*0.03);
        speedy.add(i, speedy.get(i)*0.03);
      }
    }

    break;


  case finish:

    Rect.smalg();

    break;
  }
}
