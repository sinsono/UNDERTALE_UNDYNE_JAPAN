void battle2()
{
  for (int i=ii; i<iii; i++)
  {
    if (545<=ta[13].fx+ta[13].y && ta[13].fx+ta[13].y<=580 && blockc==4 || 590<=ta[13].fx+ta[13].y)
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
    }


    if (i==0 || i==2 || i==3 || i==6 || i==9 || i== 11 || i==13) //////////////////////////right
    {
      if (560<=ta[i].fx+ta[i].y && ta[i].fx+ta[i].y<=580)
      {
        if (blockc==4)
        {
          redblock=4;
          ii++;
          ta[i].y=-2000;
          ta[i+1].c=1;
        }
      } else
        if (600<=ta[i].fx+ta[i].y)
        {
          ii++;
          ta[i].y=2000;
          hit=1;
          ta[i+1].c=1;
        }
    }


    if (i==1 || i==4 || i==5 || i==7 || i==8 || i== 10 || i==12) ///////////////////////left
    {
      if (620<=ta[i].fx-ta[i].y && ta[i].fx-ta[i].y<=640)
      {
        if (blockc==3)
        {
          redblock=2;
          ii++;
          ta[i].y=-2000;
          ta[i+1].c=1;
        }
      } else
        if (ta[i].fx-ta[i].y<=600)
        {
          ii++;
          ta[i].y=2000;
          hit=1;
          ta[i+1].c=1;
        }
    }
  }
}
