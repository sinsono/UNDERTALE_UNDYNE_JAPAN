
void battle6()
{
  switch(feel)
  {
  case bb:

    for (int i=ii; i<iii; i++)
    {
      guard();

      tama=ta[i];
      tama.tama();
      tama.move();

      if (tama.y>=-30)
      {
        if (i==1)
          iii=6;
        if (i==3)
        {
          ta[i+1].c=1;
          iii=9;
        }
        if (i==5)
          ta[7].c=1;
        if (i==8)
          feel=finish;
        ii++;
        tama.y=5000;
        hit=1;
      } else
        if (tama.y>=-80 && tama.y<=-40)
        {
          if (blockc==tama.dir)
          {
            if (i==1)
              iii=6;
            if (i==3)
            {
              ta[i+1].c=1;
              iii=9;
            }
            if (i==5)
              ta[7].c=1;
            if (i==8)
              feel=finish;
            save.play();
            save.rewind();
            redblock=blockc;
            ii++;
            tama.y=-1000;
          }
        }
    }

    break;

  case finish:

    if (t<=30)
      t++;
    else
      Rect.smalg();

    break;
  }
}
