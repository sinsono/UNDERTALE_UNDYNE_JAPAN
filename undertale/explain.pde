PImage lvhp;
PImage maxhp;
PImage yuusya;
PImage heroname;
PImage bw; //black wind
PImage explor;
PImage uexplain;

int tintbasic=255;
int stroke=255;
int timing=0;
int max1, max2, max3;
int countcount;
int rt=0;
int qw=0;
int ec=0; //explain count
float x=2000;
float x1=2000;
float x2=2000;
float x3=2000;
float rectpos;
float rectx=990;
float recty=210;
int dbc=#FF0000; //damage bar color
int string=#FFF41A;
int re=0;
int rectjudge=0;


class Explain {

  void first()
  {
    if (ec==0)
    {
      image(yuusya, 130, 520, 500, 60);
      fill(0);
      rect(1100, 550, x, 50);
      if (x<=0)
      {
        //loud.close();
      } else {
        x-=20;
        //loud.play();
      }
    } else {

      tint(255);
      image(bw, 130, 520, 580, 70);
      noTint();
      fill(0);
      rect(1200, 550, x, 50);
      if (x<=0)
      {
      } else
        x-=20;
      //loud.play();
    }

    basic();
  }

  void undyne()
  {
    image(heroname, 180, 527, 620, 60);
    heart(140, 543);
    ebar=map(uhp, 0, 40000, 0, 130);
    fill(#18F019);
    rect(700, 555, 130, 20);
    rectMode(CORNER);
    fill(#DE1414);
    noStroke();
    rect(765, 545, ebar-130, 20);
    rectMode(CENTER);
  }

  void bunseki()
  {
    image(explor, 120, 515, 280, 90);
    heart(140, 543);
  }

  void setumei()
  {
    image(uexplain, 130, 530, 850, 160);

    fill(0);
    rect(1100, 549, x1, 50);
    rect(1100, 605, x2, 50);
    rect(1100, 660, x3, 50);
    if (x1<=250)
    {
      if (x2<=550)
      {
        if (x3<=450)
        {
          timing=1;
        } else {
          x3-=20;
          //loud.play();
        }
      } else {
        x2-=20;
        //loud.play();
      }
    } else {
      x1-=20;
      //loud.play();
    }

    /*if (loud.available() == false) {
     return;
     }*/

    // basic();
  }

  void recover()
  {
    println(item.get(itemc));

    if (rt==0)
    {
      itemlength--;
      rt++;
    }

    if (item.get(itemc)=="batasuko")
    {
      countcount=1;
      image(eatba, 130, 520, 680, 150);
    } else

      if (item.get(itemc)=="yukidaru1" || item.get(itemc)=="yukidaru2"|| item.get(itemc)=="yukidaru3")
      {
        countcount=2;
        image(eatyukidaru, 130, 520, 550, 140);
      } else

        if (item.get(itemc)=="kissyu" )
        {
          countcount=3;
          image(eatkissyu, 130, 520, 600, 130);
        } else

          if (item.get(itemc)=="spider")
          {
            countcount=4;
            image(eatspider, 130, 520, 700, 130);
          } else

            if (item.get(itemc)=="bitya1" || item.get(itemc)=="bitya2")
            {
              countcount=5;
              image(eatbitya, 130, 520, 600, 180);
              hspeed=7;
            }


    fill(0);
    rect(1100, 555, x1, 60);
    rect(1100, 618, x2, 60);
    rect(1100, 668, x3, 55);

    if (countcount==1)
    {
      recoverp=56;
      hit=3;
      max1=550;
      max2=750;
      re++;
    }
    if (countcount==2)
    {
      recoverp=45;
      hit=3;
      max1=800;
      max2=1350;
      re++;
    }
    if (countcount==3)
    {
      recoverp=34;
      hit=3;
      max1=800;
      max2=750;
      re++;
    }
    if (countcount==4)
    {
      recoverp=24;
      hit=3;
      max1=300;
      max2=800;
      re++;
    }
    if (countcount==5)
    {
      recoverp=10;
      hit=3;
      max1=800;
      max2=800;
      max3=800;
      re++;
    }

    if (x1<=max1)
    {
      if (x2<=max2)
      {
        if (countcount==5)
        {
          if (x3<=max3)
          {
            timing=1;
          } else {
            x3-=20;
            //loud.play();
          }
        }
      } else {
        x2-=20;
        // loud.play();
      }
    } else {
      x1-=20;
      // loud.play();
    }
  }

  void basic()
  {
    tint(tintbasic);

    image(lvhp, 280, height/1.25, 250, 50);
    image(maxhp, 700, height/1.25, 100, 50);

    if (rectjudge==1)
      fill(0);
    else
      noFill();
    stroke(stroke);
    strokeWeight(7);
    rect(width/2, rectpos, rectx, recty);

    hpbar=map(hp, 0, 56, 0, 100);
    if (hpbar<=0)
    {
      hpbar=0;
      hp=0;
    }
    if (hpbar>=100)
    {
      hpbar=100;
    }

    fill(string);
    noStroke();
    rect(580, height/1.2, 100, 30);

    rectMode(CORNER);
    fill(dbc);
    noStroke();
    rect(630, height/1.2-15, -(100-hpbar), 30);
    rectMode(CENTER);

    noTint();
  }
}
