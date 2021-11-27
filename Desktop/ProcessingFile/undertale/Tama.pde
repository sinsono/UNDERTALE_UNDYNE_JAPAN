class Tama {

  float x=0;
  float y=0;
  float fx, fy;
  float speed;
  float degree;
  float tint=100;
  int degc=0;
  int c=0;


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
    if (degc==1)
    {
      pushMatrix();
      translate(hx,hy);
      degree=atan2(tama.fy-tama.y-hy, tama.fx-hx);
      degc=0;
      popMatrix();
    }
    rotate(degree);
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
