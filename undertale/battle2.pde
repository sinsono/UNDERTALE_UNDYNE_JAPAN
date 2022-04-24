int inta=210;

void battle2()
{
  switch(feel) {

  case bb:

    for (int i=ii; i<iii; i++)
    {
      guard();

      tama=ta[i];
      tama.tama();
      tama.move();

      if (i==3 || i==8)
        inta=200;
      else
        inta=210;

      if (tama.y>=387.5+i*inta)
      {
        ii++;
        tama.y=5000;
        hit=1;
        if (i==13)
          feel=finish;
        else
          ta[i+1].c=1;
      } else
        if (tama.y>=330+i*inta)
        {
          if (blockc==tama.dir)
          {
            save.play();
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
    }

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
