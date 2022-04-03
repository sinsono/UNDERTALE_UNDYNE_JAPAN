int setup=0;
int degd=25;
float ex1, ex2, ex3, ex4, ex5, ex6;
float ey1, ey2, ey3, ey4, ey5, ey6;

void battle9()
{
  switch(feel) {

  case bb:

    hmove();

    for (int i=i1; i<i2; i++)
    {
      ta[i]=new Tama(gx+12.5, gy+12.5, 3, radians(360/7*i));
      ta[i].y=-350;
      ta[i].yc=0;
      i1++;
      if (i2==7 || i2==21 || i2==35 || i2==49)
        ta[i].rdir=0;
      else
        ta[i].rdir=1;
    }


    for (int i=ii; i<iii; i++)
    {
      tama=ta[i];

      if (ii<56)
      {
        if (ta[ii].y>=0 && ta[ii].yc==1)
        {
          if (setup==1)
            feel=finish;

          ii+=7;
        }

        ex1=abs(tama.y+30)*cos(tama.degree-radians(degd));
        ex2=abs(tama.y+10)*cos(tama.degree-radians(degd-2));
        ex3=abs(tama.y+10)*cos(tama.degree-radians(degd));
        ex4=abs(tama.y-10)*cos(tama.degree-radians(degd));
        ex5=abs(tama.y-25)*cos(tama.degree-radians(degd));
        ex6=abs(tama.y-40)*cos(tama.degree-radians(degd));

        ey1=abs(tama.y+30)*sin(tama.degree-radians(degd));
        ey2=abs(tama.y+10)*sin(tama.degree-radians(degd-2));
        ey3=abs(tama.y+10)*sin(tama.degree-radians(degd));
        ey4=abs(tama.y-10)*sin(tama.degree-radians(degd));
        ey5=abs(tama.y-25)*sin(tama.degree-radians(degd));
        ey6=abs(tama.y-40)*sin(tama.degree-radians(degd));

        /*fill(255, 0, 0);
         ellipse(ex1+tama.fx, ey1+tama.fy, 20, 20);
         ellipse(ex2+tama.fx, ey2+tama.fy, 20, 20);
         ellipse(ex3+tama.fx, ey3+tama.fy, 20, 20);
         ellipse(ex4+tama.fx, ey4+tama.fy, 12, 12);
         ellipse(ex5+tama.fx, ey5+tama.fy, 12, 12);
         ellipse(ex6+tama.fx, ey6+tama.fy, 12, 12);*/


        if (dist(gx+12.5, gy+12.5, ex1+tama.fx, ey1+tama.fy)<=23.5 || dist(gx+12.5, gy+12.5, ex2+tama.fx, ey2+tama.fy)<=23.5 || dist(gx+12.5, gy+12.5, ex3+tama.fx, ey3+tama.fy)<=23.5 || dist(gx+12.5, gy+12.5, ex4+tama.fx, ey4+tama.fy)<=19.5 || dist(gx+12.5, gy+12.5, ex5+tama.fx, ey5+tama.fy)<=19.5 || dist(gx+12.5, gy+12.5, ex6+tama.fx, ey6+tama.fy)<=19.5)
        {
          hit=1;
        }


        tama.whi();
        tama.tint=255;
        if (tama.rdir%2==0)
          tama.degree-=0.02;
        else
          tama.degree+=0.02;

        tama.move();
      }
    }

    if (ii<56)
      if (ta[ii].y>=-130 && ta[ii].yc==0)
      {
        if (iii==56)
        {
          setup=1;
        } else
        {
          i2=i2+7;
          iii=iii+7;
        }
        ta[ii].yc=1;
      }

    break;

  case finish:

    if (t<=30)
    {
      t++;
    } else {
      if (onlyred==0)
        sep=false;
      Rect.smalg();
    }

    break;
  }
}
