int i1=0;
int i2=1;
float angle;

void battle4()
{
  for (int i=i1; i<i2; i++)
  {
    tama=ta[i];

    if (tama.tint>=150)
    {
      i2=i1+2;
    }
    if (tama.tint>=255)
    {
      i1++;
      iii++;
      tama.degc=1;
    }
    tama.whi();

    tama.degree+=0.1;
    tama.tint+=2.8;
  }

  for (int i=ii; i<iii; i++)
  {
    tama=ta[i];
    tama.whi();
    tama.move();
    if (tama.speed<=8)
      tama.speed=tama.speed*1.03;
  }
}
