void battle7()
{
  switch(feel) {

  case bb:

    for (int i=ii; i<iii; i++)
    {
      guard();

      tama=ta[i];
      tama.tama();
      tama.move();

      if (tama.y>=387.5+i*100)
      {
        ii++;
        tama.y=5000;
        hit=1;
        if (i!=20)
          ta[i+1].c=1;
        else
          feel=finish;
      } else
        if (tama.y>=330+i*100)
        {
          if (blockc==tama.dir)
          {save.play();
    save.rewind();
            redblock=blockc;
            ii++;
            tama.y=5000;
            if (i!=20)
              ta[i+1].c=1;
            else
              feel=finish;
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
