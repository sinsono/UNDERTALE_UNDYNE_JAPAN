int way;

void battle5()
{
  switch(feel) {

  case bb:

    hmove();

    for (int i=ii; i<iii; i++)
    {
      tama=ta[i];
      tama.whi();

      if (i2>=14)
      {
        if (tama.tint<=10)
        {
          feel=finish;
        } else
          ii=11;
        tama.tint-=6;
      } else {
        if (tama.fy-tama.y<=730)
        {
          iii=i+2;

          if (tama.fy-tama.y<=725)
          {
            i2++;
            ii++;
          } else
            tama.y+=1;
        } else
          tama.y+=1;
      }
    }


    for (int i=i1; i<i2; i++)
    {
      tama=ta[i];
      tama.whi();

      if (tama.fy-tama.y<=620)
      {
        if (i2>=14)
        {
          i1=i2-1;
        }
        if (tama.tint<=0)
          i1++;
        else {
          tama.speed=0;
          tama.tint-=6;
          if (i%2==0)
          {
            ey1=690;
            ey3=710;
            ey5=710;
          } else
          {
            ey2=690;
            ey4=710;
            ey6=710;
          }
        }
      }

      if (i2==i+2)
      {
        tama.move();
        fill(255, 0, 0);
        if (i%2==0)
        {
          /*circle(tama.fx-1, ey1, 17);
           circle(tama.fx-6, ey3, 17);
           circle(tama.fx+4, ey5, 17);*/
          ey1-=tama.speed;
          ey3-=tama.speed;
          ey5-=tama.speed;
          if (dist(tama.fx-1, ey1, gx, gy)<=21 || dist(tama.fx-6, ey3, gx, gy)<=21 || dist(tama.fx+4, ey5, gx, gy)<=21)
          {
            hit=1;
          }
        } else
        {
          /* circle(tama.fx-1, ey2, 17);
           circle(tama.fx-6, ey4, 17);
           circle(tama.fx+4, ey6, 17);*/
          ey2-=tama.speed;
          ey4-=tama.speed;
          ey6-=tama.speed;
          if (dist(tama.fx-1, ey2, gx, gy)<=21 || dist(tama.fx-6, ey4, gx, gy)<=21 || dist(tama.fx+4, ey6, gx, gy)<=21)
          {
            hit=1;
          }
        }
      }
    }

    break;


  case finish:

    sep=false;
    Rect.smalg();

    break;
  }
}
