
void battle11()
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
        if (tama.y>=-30)
        {
          ii++;
          tama.y=5000;
          ta[i+1].c=1;
          hit=1;
        } else
          if (tama.y>=-80 && tama.y<=-40)
          {
            if (blockc==tama.dir)
            {
              redblock=blockc;
              ii++;
              ta[i+1].c=1;
              tama.y=-1000;
            }
          }
      } else
      {
        if (tama.yc==2)
        {
          if (tama.y>=-33.5)
          {
            hit=1;
            tama.y=5000;
            ii++;
            if (i==15)
              feel=finish;
            else
              ta[i+1].c=1;
          } else
            if (tama.y>=-90)
            {
              if (blockc==tama.dir)
              {
                redblock=blockc;
                ii++;
                tama.y=-5000;
                if (i==15)
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
              tama.t+=12;
              tama.x=188*cos(radians(tama.t));
              tama.y=188*sin(radians(tama.t));
            }
          } else
            if (tama.y<=-200-i*200)
            {
              tama.fx=ggx;
              tama.fy=ggy;
              tama.x=0;
              tama.y=200+i*200;
              tama.yc=1;
            }
      }
    }

    break;

  case finish:

    if (t<=50)
    {
      t++;
    } else {
      Rect.smalg();
    }

    break;
  }
}
