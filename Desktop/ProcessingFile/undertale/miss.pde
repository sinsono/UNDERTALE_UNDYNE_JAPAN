PImage miss;

float missx=width/2+450;
float missy=120;
float misstime=1.5;
float speed=3;
int ccc=0;

void miss()
{
  if (ccc==0)
  {
    missy-=speed;

    if (missy<=95)
    {
      ccc=1;
    } else
    {
      if (missy<=110 && 105<missy)
      {
        speed=2;
      } else
        if (missy<=105 &&100<missy)
        {
          speed=1;
        } else
          if (missy<=100 && 95<missy)
          {
            speed=0.5;
          } else
            if (missy<=95 && 90<missy)
            {
              speed=0.2;
            }
    }
  }
  if (ccc>=1)
  {
    if (115<missy)
    {
      if (millis()<misstime*1000)
      {
        status=swi;
      }
    } else {
      missy+=speed;
      if (missy<=110)
      {
        speed=2;
      } else
        if (missy<100)
        {
          speed=1;
        }
    }
  }
  image(miss, missx, missy, 200, 200);
}
