float deg=0;
float lx1, lx2, ly1, ly2;
int blockc=90;
int redblock=0;
int t=0;
int ii=0;
int iii=3;
float ggx=601;
float ggy=512;

void battle1()
{
  switch(feel) {

  case bb:

    for (int i=ii; i<iii; i++)
    {
      guard();

      tama=ta[i];
      tama.tama();
      tama.move();

      if (i<=2)
      {
        if (tama.y>=387.5+i*150)
        {
          ii++;
          tama.y=5000;
          hit=1;
          ta[i+1].c=1;
          if (i==2)
            iii=13;
        } else
          if (tama.y>=330+i*150)
          {
            if (blockc==tama.dir)
            {
              redblock=blockc;
              ii++;
              tama.y=-5000;
              ta[i+1].c=1;
              if (i==2)
                iii=13;
            }
          }
      } else
        if (tama.y>=387.5+(i-3)*200)
        {
          ii++;
          tama.y=5000;
          hit=1;
          if (i==12)
            feel=finish;
          else
            ta[i+1].c=1;
        } else
          if (tama.y>=330+(i-3)*200)
          {
            if (blockc==tama.dir)
            {
              redblock=blockc;
              ii++;
              tama.y=-5000;
              if (i==12)
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
