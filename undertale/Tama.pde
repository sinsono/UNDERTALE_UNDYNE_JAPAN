class Tama {

  float x=0;
  float y=0;
  float fx, fy;
  float xx, yy;
  float speed;
  float degree;
  float ddeg;
  float tint=255;
  float distance;
  float timem=0;
  int degc=0;
  int c=0;
  int yel=0;
  int yc=0;
  int t=90;
  int rdir=0;
  int dir;


  Tama(float xx, float yy, float s, float deg)
  {
    fx=xx;
    fy=yy;
    speed=s;
    degree=deg;
  }

  void tama()
  {
    pushMatrix();
    translate(fx, fy);
    rotate(radians(degree));
    imageMode(CENTER);
    if (yel!=0)
      image(yellow, x, y, 17, 40);
    else
      if (c==0)
        image(bdown, x, y, 18, 40);
      else
        image(red, x, y, 20, 40);
    imageMode(CORNER);
    popMatrix();
  }

  void whi()
  {
    pushMatrix();
    translate(fx, fy);
    if (battlec==4)
    {
      if (degc==1)
      {
        degree=atan2(gy-fy, gx-fx);
        degc=0;
      }
    }
    rotate(degree-radians(90));
    imageMode(CENTER);
    tint(tint);
    image(white, x, y, 30, 90);
    noTint();
    imageMode(CORNER);
    popMatrix();
  }

  void move()
  {
    y+=speed;
  }
}
