int sc=1; //slect count
int c=0;
int ran;

void rest()
{
  if (onlyred==1)
    battlec=15;
  if (hspeed==7)
  {
    hspeed=5;
  }

  butten=false;
  basic=true;

  feel=bb;

  rectjudge=0;

  t=0;
  ii=0;
  once=0;

  undynetint=255;

  x1=2000;
  x2=2000;
  x3=2000;

  btint=255;
  tintbasic=255;
  barc1=0;
  barc2=0;
  bartint=255;
  dac1=0;
  enterc=0;
  skip=0;
  timing=0;
  ing=0;
  butten();
  e.first();
  re=0;

  if (keyPressed==true)
  {
    if (keyCode==RIGHT)
    {
      if (sc!=4) {
        select.play();
        select.rewind();
        sc++;
      }
      keyPressed=false;
    } else
      if (keyCode==LEFT)
      {
        if (sc!=1) {
          select.play();
          select.rewind();
          sc--;
        }
        keyPressed=false;
      }
  }

  if (sc==1)
  {
    if (keyPressed && key==ENTER)
    {
      decide.play();
      decide.rewind();
      enterc++;
      keyPressed=false;
      status=explain;
    } else {
      image(cf, 103, height-125, 192, 80);
      heart(115, height-97);
    }
  }

  if (sc==2)
  {
    if (keyPressed && key==ENTER)
    {
      decide.play();
      decide.rewind();
      enterc++;
      keyPressed=false;
      status=explain;
    } else {
      image(ca, 367, height-123, 198, 78);
      heart(385, height-97);
    }
  }

  if (sc==3)
  {
    if (keyPressed && key==ENTER)
    {
      decide.play();
      decide.rewind();
      enterc++;
      columnc=0;
      itemc=0;
      rt=0;

      if (itemlength<0)
      {
      } else {
        top3.add(item.get(0));

        if (itemlength<=0)
        {
        } else
          top3.add(item.get(1));

        if (itemlength<=1)
        {
        } else
          top3.add(item.get(2));

        keyPressed=false;
        status=explain;
      }
    } else {
      image(ci, 635, height-123, 196, 78);
      heart(652, height-97);
    }
  }


  if (sc==4)
  {
    if (keyPressed && key==ENTER)
    {
      butten();
    } else {
      image(cm, 903, height-122, 196, 78);
      heart(920, height-97);
    }
  }
}
