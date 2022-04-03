void battle8()
{
  switch(feel) {

  case bb:
    for (int i=ii; i<iii; i++)
    {
      guard();

      tama=ta[i];
      tama.tama();
      tama.move();

      if (tama.yel==0)
      {
        if (tama.y>=387.5+i*150)
        {
          ii++;
          tama.y=5000;
          hit=1;
          ta[i+1].c=1;
        } else
          if (tama.y>=330+i*150)
          {
            if (blockc==tama.dir)
            {save.play();
    save.rewind();
              redblock=blockc;
              ii++;
              tama.y=-5000;
              ta[i+1].c=1;
            }
          }
      } else {
        if (tama.yc==2)
        {
          if (tama.y>=-33.5)
          {
            hit=1;
            tama.y=5000;
            ii++;
            if (i==13)
              feel=finish;
            else
              ta[i+1].c=1;
          } else
            if (tama.y>=-76)
            {
              if (blockc==tama.dir)
              {save.play();
    save.rewind();
                redblock=blockc;
                ii++;
                tama.y=-5000;
                if (i==13)
                  feel=finish;
                else
                  ta[i+1].c=1;
              }
            }
        } else
          if (tama.yc==1)
          {
            if (tama.t>=270)
            {
              tama.speed=-tama.speed;
              tama.yc=2;
            } else {
              tama.fx=ggx;
              tama.fy=ggy;
              tama.t+=7;
              tama.x=188*cos(radians(tama.t));
              tama.y=188*sin(radians(tama.t));
            }
          } else
            if (tama.y<=-200-i*150)
            {
              tama.yc=1;
            }
      }
    }

    break;

  case finish:

    if (t<=30)
    {
      t++;
    } else {
      sep=true;
      Rect.smalg();
    }

    break;
  }
}
