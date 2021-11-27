class Rect {

  void bigg()
  {
    if (sep==false)
    {
      if (rectx<=120)
      {
        if (rectpos<=height/1.47-100)
        {
          gy=500;
          rectpos=height/1.47-100;

          if (recty<=120)
          {
            recty=120;
            noFill();
            stroke(#44BC67);
            strokeWeight(1);
            ellipse(600, 512, 80, 80);
            string=#949D16;
            dbc=#900F0F;
            t=0;
            status=battle;
          } else
            recty-=20;
        } else
        {
          stroke=180;
          rectpos-=10;
          gy-=10;
        }
      } else
        rectx-=20;
    } else {
      if (battlec==4)
      {
        if (rectx<=300)
        {
          rectx=300;
          if (300<=recty)
          {
            recty=300;
            string=#949D16;
            dbc=#900F0F;
            t=0;
            status=battle;
          } else
          {
            stroke=180;
            recty+=10;
            rectpos-=5;
          }
        } else
          rectx-=20;
      }
      if (battlec==1)
      {
        gy=590;
        if (recty<=140)
        {
          if (rectx<=110)
          {
            status=battle;
          } else
            rectx-=20;
        } else {
          recty-=10;
          rectpos+=5;
        }
      }
    }
  }

  void smalg()
  {
    if (rectpos>=height/1.47)
    {
      rectpos=height/1.47;

      if (recty>=210)
      {
        recty=210;

        if (rectx>=990)
        {
          string=#FFF41A;
          dbc=#FF0000;
          ec=1;
          status=rest;
        } else {
          gx=2000;
          gy=2000;
          rectx+=20;
          stroke=255;
          if (tintbasic<=255 && btint<=255)
          {
            btint+=2;
            tintbasic+=2;
          }
        }
      } else
        recty+=8;
    } else
    {
      rectpos+=7.693;
      gy+=5;
    }
  }
}//612.2449
