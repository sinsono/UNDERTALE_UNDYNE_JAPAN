import java.util.Arrays;
import java.util.List;
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
import processing.video.*;
import gifAnimation.*;

Tama [] ta;
Tama tama;
Explain e;
Rect Rect;


PImage h; //heart
PImage gh; //green heart
PImage f; //fight butten
PImage a; //act butten
PImage i; //item butten
PImage m; //mercy buttenz
PImage cf; //clicked fight0
PImage ca;
PImage ci;
PImage cm;
PImage bdown;//blue
PImage red;
PImage yellow;
PImage white;
PImage blocku, blockd, blockr, blockl;

ArrayList <Integer> random;

int once=0;
int skip=0;
int ing;
int enterc=0;
int namecount=0;
int battlec=0;
int htint=255;
int hit=0;
int recoverp;
float scene=0;
int supi=0;
int scount=0;
int undynetint=255;
int sup3=0;
int btint=255;
int Time=0;

float bg=0;
float uhp=30000;
float hp=56;
float hpbar;
float ebar;
float hx=588;
float hy=600;
float gx=588;
float gy=600;
float hspeed=4.5; //heart speed


final int battle=1;
final int rest=2;
final int attack=3;
final int motion=4;
final int explain=5;
final int swi=6;

int status=rest;
int redrandom;

boolean sep=false; //separate  true:red   false:green
boolean strong=false;
boolean butten=false;
boolean basic=false;
boolean b=false;


void keyPressed()
{
  if (key==CODED)
  {
    if (b==false) {

      switch(keyCode) {

      case UP:
        guardm.set(0, true);
        break;

      case DOWN:
        guardm.set(1, true);
        break;

      case RIGHT:
        guardm.set(2, true);
        break;

      case LEFT:
        guardm.set(3, true);
        break;
      }
    } else {

      switch(keyCode) {

      case UP:
        hmovem.set(0, true);
        break;

      case DOWN:
        hmovem.set(1, true);
        break;

      case RIGHT:
        hmovem.set(2, true);
        break;

      case LEFT:
        hmovem.set(3, true);
        break;
      }
    }
  }
}


void keyReleased()
{
  if (key==CODED)
  {
    if (b==false) {

      switch(keyCode) {

      case UP:
        guardm.set(0, false);
        break;

      case DOWN:
        guardm.set(1, false);
        break;

      case RIGHT:
        guardm.set(2, false);
        break;

      case LEFT:
        guardm.set(3, false);
        break;
      }
    } else {
      switch(keyCode) {

      case UP:
        hmovem.set(0, false);
        break;

      case DOWN:
        hmovem.set(1, false);
        break;

      case RIGHT:
        hmovem.set(2, false);
        break;

      case LEFT:
        hmovem.set(3, false);
        break;
      }
    }
  }
}


void draw()
{
  background(bg);

  if (scene==0)
  {
    titlebgm.play();
    title();
  } else
    if (scene==1.5)
    {
      if (bg>=300)
      {
        bg=0;
        start.close();
        scene=1.7;
      }
      start.play();
      bg+=1;
    } else
      if (scene==1.7)
      {
        Time++;
        if (Time>=335)
          up.stop();
        else
          up.play();
        imageMode(CENTER);
        tint(255);
        image(up, width/2, height/2+50, width-200, height-100);
        fill(0);
        rect(width/2, height/2+300, width+20, height/2+60);
        up1.play();
        imageMode(CORNER);
        butten();
        e.basic();
        if (Time>=400)
          scene=1;
      } else
        if (scene==2)
        {
          gameover.play();
          imageMode(CENTER);
          tint(255);
          image(gameover, width/2, height/2, width+300, height);
        } else
          if (scene==1)
          {
            tint(undynetint);
            image(move, width/2-160, 100, 500, 400);
            noTint();

            if (bgm.isPlaying()==false)
              bgm.rewind();

            bgm.play();


            if (butten==false)
            {
              butten();
            }
            if (basic==false)
            {
              e.basic();
            }

            switch(status) {

            case rest:

              rest();

              break;


            case explain:

              if (keyPressed==true && key==BACKSPACE && 1<=enterc &&  ing!=1)
              {
                enterc--;
                keyPressed=false;
              }

              if (enterc==0)
              {
                status=rest;
                keyPressed=false;
              }

              if (sc==1)
              {
                if (enterc==1)
                {
                  e.undyne();
                }
                if (enterc==2)
                {
                  bx=1080;
                  status=attack;
                }
              }


              if (sc==2)
              {
                if (enterc==1)
                {
                  e.undyne();
                  fill(0);
                  rect(700, 560, 200, 40);
                }
                if (enterc==2)
                {

                  e.bunseki();
                }
                if (enterc==3)
                {
                  ing=1;
                  e.setumei();
                }
                if (enterc==4 && skip==0)
                {
                  if (timing==1)
                  {
                    battlec++;
                    status=swi;
                  } else
                    skip=1;
                }
                if (skip==1)
                {
                  if (enterc==5)
                  {
                    battlec++;
                    status=swi;
                  }
                  e.setumei();
                  x1=0;
                  x2=0;
                  x3=0;
                }
              }


              if (sc==3)
              {
                if (enterc==1)
                  item();

                if (enterc==2) {
                  ing=1;
                  e.recover();
                }
                if (enterc==3 && skip==0)
                {
                  if (timing==1)
                  {
                    battlec++;
                    status=swi;
                  } else
                    skip=1;
                }
                if (skip==1)
                {
                  if (enterc==4)
                  {
                    battlec++;
                    status=swi;
                  }
                  e.recover();
                  x1=0;
                  x2=0;
                  x3=0;
                }
                if (status==swi)
                {
                  top3.clear();
                  item.remove(itemc);
                }
              }

              enter();

              break;


            case attack:

              attack();

              break;


            case motion:


              motion();

              break;

              ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            case swi:
              /*battlec=9;
               sep=true;*/

              if (battlec>=15)
              {
                redrandom=int(random(0, 4));
                if (redrandom==0)
                  battlec=4;
                if (redrandom==1)
                  battlec=5;
                if (redrandom==2)
                  battlec=9;
                if (redrandom==3)
                  battlec=14;
              }


              if (battlec==2)
              {
                iii=14;

                for (int i=0; i<14; i++)
                {
                  if (i==0 || i==2 || i==3 || i==6 || i==9 || i== 11 || i==13)
                  {
                    if (i==3)
                      ta[i] = new Tama(ggx-400-i*200, height/2+60, 12, -90);
                    else
                      ta[i] = new Tama(ggx-400-i*210, height/2+60, 12, -90);

                    ta[i].dir=180;
                  }

                  if (i==1 || i==4 || i==5 || i==7 || i==8 || i== 10 || i==12)
                  {
                    if (i==8)
                      ta[i] = new Tama(ggx+400+i*200, height/2+60, 12, 90);
                    else
                      ta[i] = new Tama(ggx+400+i*210, height/2+60, 12, 90);

                    ta[i].dir=-180;
                  }
                }
                ta[0].c=1;
              }

              if (battlec==3)
              {
                if (t>=18)
                {
                  iii=18;
                  t=0;
                } else {
                  for (int i=0; i<18; i++)
                  {
                    t++;
                    ran=int(random(1, 4));

                    if (ran==1)
                    {
                      ta[i] = new Tama(ggx-400-i*45, height/2+60, 3, -90);
                      ta[i].dir=180;
                    }

                    if (ran==2)
                    {
                      ta[i] = new Tama(ggx+400+i*45, height/2+60, 3, 90);
                      ta[i].dir=-180;
                    }

                    if (ran==3)
                    {
                      ta[i] = new Tama(width/2, ggy-400-i*45, 3, 0);
                      ta[i].dir=90;
                    }

                    if (ran==4)
                    {
                      ta[i] = new Tama(width/2, ggy+400+i*45, 3, 180);
                      ta[i].dir=-90;
                    }

                    ta[0].c=1;
                  }
                }
              }

              if (battlec==4)
              {
                for (int i=0; i<20; i++)
                {
                  if (t>=20)
                  {
                    t=0;
                    i1=0;
                    i2=1;
                    ii=0;
                    iii=0;
                  } else {
                    t++;

                    if (once!=0)
                    {
                      once=ran;
                      random.remove(once-1);
                    }

                    ran=int(random(random.get(0), random.get(random.size()-1)));

                    if (once!=0) {
                      if (random.indexOf(once)==-1)
                        random.add(once-1, once);
                    }

                    if (ran==1)
                      ta[i] = new Tama(random(430, 800), random(350, 400), 2, -120);

                    if (ran==2)
                      ta[i] = new Tama(random(400, 430), random(430, 700), 2, -120);

                    if (ran==3)
                      ta[i] = new Tama(random(450, 750), random(750, 800), 2, -120);

                    if (ran==4)
                      ta[i] = new Tama(random(740, 800), random(430, 750), 2, -120);

                    ta[i].tint=0;
                  }
                }
              }

              if (battlec==5)
              {
                ey1=690;
                ey2=690;
                ey3=710;
                ey4=710;
                ey5=710;
                ey6=710;
                for (int i=0; i<15; i++)
                {
                  if (t>=15)
                  {
                    t=0;
                    ii=0;
                    iii=1;
                    i1=0;
                    i2=0;
                  } else {
                    t++;

                    if (once!=0)
                    {
                      once=way;
                    }

                    way=int(random(1, 4));

                    if (once!=0) {
                      if (once==way)
                        once=int(random(200, 201));

                      if (once==200)
                      {
                        if (way!=1)
                        {
                          way--;
                        } else
                          way++;
                      }

                      if (once==201)
                      {
                        if (way!=3)
                        {
                          way++;
                        } else
                          way--;
                      }
                    }

                    if (way==1)
                    {
                      ta[i] = new Tama(567, 760, 10, radians(-90));
                    }
                    if (way==2)
                    {
                      ta[i] = new Tama(602, 760, 10, radians(-90));
                    }
                    if (way==3)
                    {
                      ta[i] = new Tama(635, 760, 10, radians(-90));
                    }//720

                    ta[i].tint=255;
                    ta[i].speed=7;
                  }
                }
              }

              if (battlec==6)
              {
                ii=0;
                iii=4;

                for (int i=0; i<9; i++)
                {
                  if (i==0 || i==4 || i==6)
                  {
                    ta[i] = new Tama(ggx, ggy, 10, -90);
                    ta[i].y=-500;
                    if (i==4 || i==6)
                      ta[i].speed=6;

                    ta[i].dir=180;
                  }
                  if (i==1 || i==7)
                  {
                    ta[i] = new Tama(ggx, ggy, 8, 0);
                    ta[i].y=-550;
                    if (i==7)
                    {
                      ta[i].y=-350;
                      ta[i].speed=3;
                    }
                    ta[i].dir=90;
                  }
                  if (i==2 || i==5)
                  {
                    ta[i] =new Tama(ggx, ggy, 6, 90);
                    ta[i].y=-600;
                    if (i==5)
                    {
                      ta[i].speed=13;
                      ta[i].y=-1200;
                    }
                    ta[i].dir=-180;
                  }
                  if (i==3 || i==8)
                  {
                    ta[i] = new Tama(ggx, ggy, 7, 180);
                    ta[i].y=-800;
                    if (i==8)
                    {
                      ta[i].speed=3;
                      ta[i].y=-400;
                    }
                    ta[i].dir=-90;
                  }

                  ta[1].c=1;
                  ta[3].c=1;
                  ta[8].c=1;
                }
              }

              if (battlec==7)
              {
                for (int i=0; i<21; i++)
                {
                  if (0<=i && i<=3 || 5<=i && i<=8 || 10<=i && i<=12 || 14<=i && i<=16 || 18<=i && i<=20)
                  {
                    ta[i] = new Tama(width/2, ggy-400-i*100, 10, 0);
                    ta[i].dir=90;
                  }
                  if (i==4 || i==13)
                  {
                    ta[i] = new Tama(ggx-400-i*100, height/2+60, 10, -90);
                    ta[i].dir=180;
                  }
                  if (i==9 || i==17)
                  {
                    ta[i] = new Tama(ggx+400+i*100, height/2+60, 10, 90);
                    ta[i].dir=-180;
                  }
                }

                ii=0;
                iii=21;
                ta[0].c=1;
              }

              if (battlec==8)
              {
                ii=0;
                iii=14;
                for (int i=0; i<14; i++)
                {
                  if (i%2==0)
                  {
                    ta[i] = new Tama(ggx-400-i*150, height/2+60, 8, -90);
                    ta[i].dir=180;
                  } else
                  {
                    ta[i] = new Tama(width/2, ggy-400-i*150, 8, 0);
                    ta[i].dir=90;
                  }

                  if (8<=i)
                  {
                    ta[i].yel=1;
                    ta[i].speed=-ta[i].speed;
                    ta[i].dir=-ta[i].dir;
                    ta[i].degree+=180;
                  }
                }
                ta[0].c=1;
              }

              if (battlec==9)
              {
                ii=0;
                iii=7;
                i1=0;
                i2=7;
                setup=0;
                degd=25;
              }

              if (battlec==10)
              {
                ii=0;
                iii=13;

                for (int i=0; i<13; i++)
                {
                  if (i==0 || i==8 || i==11)
                  {
                    ta[i] =new Tama(ggx+400+i*200, height/2+60, 10, 90);
                    ta[i].dir=-180;
                  }
                  if (i==2 || i==6 || i==10)
                  {
                    ta[i] = new Tama(ggx-400-i*200, height/2+60, 10, -90);
                    ta[i].dir=180;
                  }
                  if (i==1 || i==5 || i==12)
                  {
                    ta[i] = new Tama(width/2, ggy-400-i*200, 10, 0);
                    ta[i].dir=90;
                  }
                  if (i==3 || i==7 || i==9)
                  {
                    ta[i] = new Tama(width/2, ggy+400+i*200, 10, 180);
                    ta[i].dir=-90;
                  }

                  if (0<=i && i<=3 || 9<=i && i<=12)
                  {
                    ta[i].yel=1;
                    ta[i].speed=-ta[i].speed;
                    ta[i].dir=-ta[i].dir;
                    ta[i].degree+=180;
                  }
                  ta[i].yc=0;
                }
                ta[0].c=1;
              }


              if (battlec==11)
              {
                ii=0;
                iii=16;
                for (int i=0; i<16; i++)
                {
                  if (i==0 || i==4 || i==8 || i==12)
                  {
                    ta[i] = new Tama(ggx, ggy, 10, -90);
                    ta[i].y=-400-i*200;
                    ta[i].dir=180;
                  }
                  if (i==1 || i==5 || i==9 || i==13)
                  {
                    ta[i] =new Tama(ggx, ggy, 10, 90);
                    ta[i].y=-400-i*200;
                    ta[i].dir=-180;
                  }
                  if (i==2 || i==7 || i==10 || i==15)
                  {
                    ta[i] = new Tama(ggx, ggy, 10, 0);
                    ta[i].y=-400-i*200;
                    if (i==7|| i==15)
                    {
                      ta[i] = new Tama(width/2, ggy-400-i*200, 10, 180);
                      ta[i].y=0;
                    }
                    ta[i].dir=90;
                  }
                  if (i==3 || i==6 || i==11 || i==14)
                  {
                    ta[i] = new Tama(ggx, ggy, 10, 180);
                    ta[i].y=-400-i*200;
                    if (i==3 || i==11)
                    {
                      ta[i] = new Tama(width/2, ggy+400+i*200, 10, 0);
                      ta[i].y=0;
                    }
                    ta[i].dir=-90;
                  }

                  if (i==3 || i==7 || i==11 || i==15)
                  {
                    ta[i].yel=1;
                    ta[i].dir=-ta[i].dir;
                    ta[i].speed=-ta[i].speed;
                  }
                  ta[i].yc=0;
                }
                ta[0].c=1;
              }


              if (battlec==12)
              {
                ii=0;
                iii=20;
                for (int i=0; i<20; i++)
                {
                  if (i==0  || i==1 || i==12 || i==13)
                  {
                    ta[i] = new Tama(ggx-400-i*150, height/2+60, 10, -90);
                    ta[i].dir=180;
                  }
                  if (i==3  || i==4 || i==15 || i==16)
                  {
                    ta[i] = new Tama(width/2, ggy+400+i*150, 10, 180);
                    ta[i].dir=-90;
                  }
                  if (i==6 || i==7 || i==18 || i==19)
                  {
                    ta[i] =new Tama(ggx+400+i*150, height/2+60, 10, 90);
                    ta[i].dir=-180;
                  }
                  if (i==9  || i==10)
                  {
                    ta[i] = new Tama(width/2, ggy-400-i*150, 10, 0);
                    ta[i].dir=90;
                  }
                  if (i==1 || i==4 || i==7 || i==10 || i==13 || i==16 || i==19)
                  {
                    ta[i].yel=1;
                    ta[i].speed=-ta[i].speed;
                    ta[i].dir=-ta[i].dir;
                    ta[i].degree+=180;
                    ta[i].yc=0;
                  }
                }
                ta[0].c=1;
              }


              if (battlec==13)
              {
                if (t>=20)
                {
                  iii=20;
                  t=0;
                } else {
                  for (int i=0; i<20; i++)
                  {
                    t++;
                    ran=int(random(1, 4));

                    if (ran==1)
                    {
                      ta[i] = new Tama(ggx-400-i*40, height/2+60, 3, -90);
                      ta[i].dir=180;
                    }

                    if (ran==2)
                    {
                      ta[i] = new Tama(ggx+400+i*40, height/2+60, 3, 90);
                      ta[i].dir=-180;
                    }

                    if (ran==3)
                    {
                      ta[i] = new Tama(width/2, ggy-400-i*40, 3, 0);
                      ta[i].dir=90;
                    }

                    if (ran==4)
                    {
                      ta[i] = new Tama(width/2, ggy+400+i*40, 3, 180);
                      ta[i].dir=-90;
                    }

                    ta[0].c=1;
                  }
                }
              }

              if (battlec==14)
              {
                ii=0;
                iii=0;
                i1=0;
                i2=6;
                ei1=0;
                ei2=6;
                stint=5.5;
                sdeg=0;
                sspeed=10;
                bet=70;
              }

              if (once==0)
              {
                gx=588;
                gy=600;
                if (battlec==9 || battlec==14)
                {
                  gx=588;
                  gy=500;
                }
                once=1;
              }

              if (tintbasic>=140 && btint>=140)
              {
                hptint-=2;
                tintbasic-=2;
                btint-=2;
              }

              Rect.bigg();

              heart(gx, gy);

              undynetint-=2;

              rectjudge=1;

              break;


            case battle:

              if (battlec==1)
              {
                battle1();
              } else
                if (battlec==2)
                {
                  battle2();
                } else
                  if (battlec==3)
                  {
                    battle3();
                  } else
                    if (battlec==4)
                    {
                      basic=false;
                      battle4();
                    } else
                      if (battlec==5)
                      {
                        rectjudge=22;
                        battle5();
                        fill(0);
                        rect(580, 728, 150, 13.8);
                        rect(644, 750, 28, 50);
                        rect(600, 786, 150, 42);
                        butten=true;
                        basic=true;
                      } else
                        if (battlec==6)
                        {
                          battle6();
                        } else
                          if (battlec==7)
                          {
                            battle7();
                          } else
                            if (battlec==8)
                            {
                              battle8();
                            } else
                              if (battlec==9)
                              {
                                battle9();
                                butten=false;
                                basic=false;
                              } else
                                if (battlec==10)
                                {
                                  battle10();
                                } else
                                  if (battlec==11)
                                  {
                                    battle11();
                                  } else
                                    if (battlec==12)
                                    {
                                      battle12();
                                    } else
                                      if (battlec==13)
                                      {
                                        battle13();
                                      } else
                                        if (battlec==14)
                                        {
                                          battle14();
                                          butten=false;
                                          basic=false;
                                        }
              heart(gx, gy);

              if (sep==false)
              {
                b=false;
                basic=false;
              } else
              {
                b=true;
              }

              break;
            }


            hit();

            if (mousePressed)
            {
              println("mousex:" + mouseX);
              println("mousey:" + mouseY);
              mousePressed=false;
            }

            if (sup3>=3)
            {
              sup3=0;
            } else
              if (sup3>=1)
              {
                butten();
                e.basic();
                sup3++;
              }

            if (butten==true)
            {
              butten();
            }
            if (basic==true)
            {
              e.basic();
            }
          }
}




void heart(float x, float y)
{
  tint(htint);
  if (sep==true)
    image(h, x, y, 27, 27);
  else
    if (sep==false)
    {
      image(gh, x, y, 27, 27);
      noTint();
    }
}

void enter()
{
  if (keyPressed==true && key==ENTER)
  {
    decide.play();
    decide.rewind();
    enterc++;
    keyPressed=false;
  }
}


void hit()
{
  if (hit==1)
  {
    if (strong==false)
    {
      hits.play();
      hits.rewind();
      hp-=int(random(8, 13));
      strong=true;
    }

    if (strong==true)
    {
      if (scount>=5)
      {
        supi=0;
        scount=0;
        htint=255;
        hit=0;
        strong=false;
      } else
      {
        if (supi>=7)
        {
          scount++;
          supi=0;
        }

        if (scount%2==0)
          htint=180;
        else
          htint=255;
        supi++;
      }
    }

    if (hp<=0)
      scene=2;
  }
  if (hit==3)
  {
    if (re==1)
    {
      food.play();
      food.rewind();
      hp+=recoverp;
      if (hp>56)
      {
        hp=56;
      }
    }
    hit=0;
  }
}

void butten()
{
  tint(btint);
  image(f, 100, height-125, 200, 80);
  image(a, 366, height-123, 200, 78);
  image(i, 632, height-123, 200, 78);
  image(m, 900, height-122, 200, 78);
  noTint();
}



void hmove()
{
  if (battlec==4)
  {
    if (gx<=455)
    {
      gx=455;
    }
    if (720<=gx)
    {
      gx=720;
    }
    if (gy<=420)
    {
      gy=420;
    }
    if (690<=gy)
    {
      gy=690;
    }
  }
  if (battlec==5)
  {
    if (gx<=550)
    {
      gx=550;
    }
    if (625<=gx)
    {
      gx=625;
    }
    if (gy<=583)
    {
      gy=583;
    }
    if (690<=gy)
    {
      gy=690;
    }
  }
  if (battlec==9 || battlec==14)
  {
    if (gx<=110)
    {
      gx=110;
    }
    if (1065<=gx)
    {
      gx=1065;
    }
    if (gy<=225)
    {
      gy=225;
    }
    if (690<=gy)
    {
      gy=690;
    }
  }
  if (hmovem.get(0)==true)
  {
    gy-=hspeed;
  }
  if (hmovem.get(1)==true)
  {
    gy+=hspeed;
  }
  if (hmovem.get(2)==true)
  {
    gx+=hspeed;
  }
  if (hmovem.get(3)==true)
  {
    gx-=hspeed;
  }
}
