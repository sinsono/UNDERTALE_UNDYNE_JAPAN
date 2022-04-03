void battle3()
{
  switch(feel) {

  case bb:

    for (int i=ii; i<iii; i++)
    {
      guard();

      tama=ta[i];
      tama.tama();
      tama.move();

      if (tama.y>=387.5+i*45)
      {
        ii++;
        tama.y=5000;
        hit=1;
        if (i==17)
          feel=finish;
        else
          ta[i+1].c=1;
      } else
        if (330+i*45<=tama.y && tama.y<=340+i*45)
        {
          if (blockc==tama.dir)
          {save.play();
    save.rewind();
            redblock=blockc;
            ii++;
            tama.y=-5000;
            if (i==17)
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
      sep=true;
      t++;
    } else {
      Rect.smalg();
    }

    break;
  }
}
