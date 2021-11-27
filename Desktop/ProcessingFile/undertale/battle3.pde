void battle3()
{
  for (int i=ii; i<iii; i++)
  {
    if (iii==19)
    {
      if (t<=30)
      {
        sep=true;
        t++;
      } else {
        Rect.smalg();
      }
    } else {
      
      guard();

      tama=ta[i];
      tama.tama();
      tama.move();


      if (ta[i].degree==0)
      {
        if (440<=ta[i].fy+ta[i].y && ta[i].fy+ta[i].y<=460)
        {
          if (blockc==1)
          {
            redblock=1;
            ii++;
            ta[i].y=-2000;
            if (i!=17)
              ta[i+1].c=1;
            else
              iii++;
          }
        } else
          if (480<=ta[i].fy+ta[i].y)
          {
            ii++;
            ta[i].y=-2000;
            hit=1;
            if (i!=17)
              ta[i+1].c=1;
            else
              iii++;
          }
      } else
        if (ta[i].degree==180)
        {
          if (570<=ta[i].fy-ta[i].y && ta[i].fy-ta[i].y<=590)
          {
            if (blockc==2)
            {
              redblock=3;
              ii++;
              ta[i].y=-2000;
              if (i!=17)
                ta[i+1].c=1;
              else
                iii++;
            }
          } else
            if (ta[i].fy-ta[i].y<=550)
            {
              ii++;
              iii++;
              ta[i].y=2000;
              hit=1;
              if (i!=17)
                ta[i+1].c=1;
              else
                iii++;
            }
        } else
          if (ta[i].degree==90)
          {
            if (650<=ta[i].fx-ta[i].y && ta[i].fx-ta[i].y<=660)
            {
              if (blockc==3)
              {
                redblock=2;
                ii++;
                ta[i].y=-2000;
                if (i!=17)
                  ta[i+1].c=1;
                else
                  iii++;
              }
            } else
              if (ta[i].fx-ta[i].y<=600)
              {
                ii++;
                ta[i].y=2000;
                hit=1;
                if (i!=17)
                  ta[i+1].c=1;
                else
                  iii++;
              }
          } else
            if (ta[i].degree==-90)
            {
              if (550<=ta[i].fx+ta[i].y && ta[i].fx+ta[i].y<=560)
              {
                if (blockc==4)
                {
                  redblock=4;
                  ii++;
                  ta[i].y=-2000;
                  if (i!=17)
                    ta[i+1].c=1;
                  else
                    iii++;
                }
              } else
                if (600<=ta[i].fx+ta[i].y)
                {
                  ii++;
                  ta[i].y=2000;
                  hit=1;
                  if (i!=17)
                    ta[i+1].c=1;
                  else
                    iii++;
                }
            }
    }
  }
}
