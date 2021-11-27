float deg=0;
float lx1, lx2, ly1, ly2;
int blockc=1;
int redblock=0;
int t=0;
int ii=0;
int iii=3;

void battle1()
{
  /* pushMatrix();
   translate(605, 513);
   rotate(deg);
   imageMode(CENTER);
   image(aaa, 0, 0, 110, 110);
   imageMode(CORNER);
   popMatrix();
   */


  for (int i=ii; i<iii; i++)
  {
    if (ii>=13)
    {
      if (t<=30)
      {
        t++;
      } else {
        Rect.smalg();
      }
    } else {

      guard();

      tama=ta[i];
      tama.tama();
      tama.move();


      if (i<=2)
      {
        if (440<=ta[i].fy+ta[i].y && ta[i].fy+ta[i].y<=460)
        {
          if (blockc==1)
          {
            if (i==2)
            {
              iii=4;
            }
            redblock=1;
            ii++;
            ta[i].y=-1000;
            ta[i+1].c=1;
          }
        } else
          if (480<=ta[i].fy+ta[i].y)
          {
            if (i==2)
            {
              iii=4;
            }
            ii++;
            ta[i].y=-1000;
            hit=1;
            ta[i+1].c=1;
          }
      }

      if (i==3 || i==9) //////////////////////////left
      {
        if (620<=ta[i].fx-ta[i].y && ta[i].fx-ta[i].y<=640)
        {
          if (blockc==3)
          {
            redblock=2;
            ii++;
            iii++;
            ta[i].y=-2000;
            ta[i+1].c=1;
          }
        } else
          if (ta[i].fx-ta[i].y<=600)
          {
            ii++;
            iii++;
            ta[i].y=2000;
            hit=1;
            ta[i+1].c=1;
          }
      }
      if (i==4 || i==8 || i==10)   /////////////////////up
      {
        if (570<=ta[i].fy-ta[i].y && ta[i].fy-ta[i].y<=590)
        {
          if (blockc==2)
          {
            redblock=3;
            ii++;
            iii++;
            ta[i].y=-2000;
            ta[i+1].c=1;
          }
        } else
          if (ta[i].fy-ta[i].y<=550)
          {
            ii++;
            iii++;
            ta[i].y=2000;
            hit=1;
            ta[i+1].c=1;
          }
      }
      if (i==5|| i==7 || i==11) ///////////////////////right
      {
        if (560<=ta[i].fx+ta[i].y && ta[i].fx+ta[i].y<=580)
        {
          if (blockc==4)
          {
            redblock=4;
            ii++;
            iii++;
            ta[i].y=-2000;
            ta[i+1].c=1;
          }
        } else
          if (600<=ta[i].fx+ta[i].y)
          {
            ii++;
            iii++;
            ta[i].y=2000;
            hit=1;
            ta[i+1].c=1;
          }
      }
      if (i==6 || i==12) /////////////////////////down
      {
        if (440<=ta[i].fy+ta[i].y && ta[i].fy+ta[i].y<=460)
        {
          if (blockc==1)
          {
            redblock=1;
            ii++;
            iii++;
            ta[i].y=-2000;
            if (i!=12)
              ta[i+1].c=1;
          }
        } else
          if (480<=ta[i].fy+ta[i].y)
          {
            ii++;
            iii++;
            ta[i].y=-2000;
            hit=1;
            if (i!=12)
              ta[i+1].c=1;
          }
      }
    }
  }
}
