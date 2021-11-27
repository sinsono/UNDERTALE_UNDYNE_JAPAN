int way;

void battle5()
{
  for (int i=ii; i<iii; i++)
  {
    tama=ta[i];
    tama.whi();
    if (tama.fy-tama.y<=725)
    {
      if (i2==14)
      {
        ii=iii;
      } else {
        i2++;
        ii++;
        iii++;
      }
    } else
      tama.y+=2;
  }
  for (int i=i1; i<i2; i++)
  {
    if (tama.fy-tama.y<=620)
    {
      tama.speed=0;
      tama.tint-=6;
    }
    tama=ta[i];
    tama.whi();

    if (i!=0)
    {
      if (ta[i-1].tint<=10)
      {
        tama.move();
      }
    } else
      tama.move();
  }
}
