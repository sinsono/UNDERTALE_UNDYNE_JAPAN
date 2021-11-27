import java.util.Arrays;
import java.util.List;
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//import processing.video.*;
//import gifAnimation.*;

Tama [] ta;

Tama tama;
Explain e;
Rect Rect;

/*Movie move;
 
 Gif undynemove;
 
 Movie dead;
 
 Minim minim;
 AudioPlayer bgm;
 AudioPlayer killsound;
 AudioPlayer loud;
 AudioPlayer decide;
 AudioPlayer select;
 */

PImage h; //heart
PImage gh; //green heart
PImage f; //fight butten
PImage a; //act butten
PImage i; //item butten
PImage m; //mercy buttenz
PImage cf; //clicked fight
PImage ca;
PImage ci;
PImage cm;
PImage bdown;//blue
PImage red;
PImage white;
PImage blocku, blockd, blockr, blockl;
PImage aaa;

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
int gameover=0;

float hp=56;
float hpbar;
float hx=588;
float hy=600;
float gx=588;
float gy=600;
float hspeed=5; //heart speed


final int start=0;
final int battle=1;
final int rest=2;
final int attack=3;
final int motion=4;
final int explain=5;
final int swi=6;

int status=rest;

boolean sep=true; //separate  true:red   false:green
boolean strong=false;
boolean butten=false;
boolean basic=true;

void draw()
{
  background(0);

  /*tint(255);
   image(move,400,50,550,450);
   move.loop();
   move.read();
   noTint();*/

  if (gameover>=0)
  {
    /*imageMode(CENTER);
     tint(255);
     image(dead, width/2, height/2, width+300, height);
     dead.play();
     dead.read();*/

    //bgm.play();

    if (butten==false)
    {
      butten();
    }
    if (basic==false)
    {
      e.basic();
    }

    switch(status) {

    case start:

      //title();

      break;


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
            top3.clear();
            item.remove(itemc);
            battlec++;
            status=swi;
          } else
            skip=1;
        }
        if (skip==1)
        {
          if (enterc==4)
          {
            top3.clear();
            item.remove(itemc);
            battlec++;
            status=swi;
          }
          e.recover();
          x1=0;
          x2=0;
          x3=0;
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


    case swi:

      if (battlec==2)
      {
        iii=14;

        for (int i=0; i<14; i++)
        {
          if (i==0 || i==2 || i==3 || i==6 || i==9 || i== 11 || i==13)
          {
            if (i==3)
            {
              ta[3] = new Tama(300-i*220, height/2+60, 12, -90);
            } else
              ta[i] = new Tama(300-i*240, height/2+60, 12, -90);
          }

          if (i==1 || i==4 || i==5 || i==7 || i==8 || i== 10 || i==12)
          {
            if (i==5)
            {
              ta[5] = new Tama(900+i*210, height/2+60, 12, 90);
            } else
              if (i==8)
              {
                ta[8] = new Tama(900+i*210, height/2+60, 12, 90);
              } else
                ta[i] = new Tama(900+i*240, height/2+60, 12, 90);
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
              ta[i] = new Tama(200-i*45, height/2+60, 2, -90);

            if (ran==2)
              ta[i] = new Tama(1000+i*45, height/2+60, 2, 90);

            if (ran==3)
              ta[i] = new Tama(width/2, 100-i*45, 2, 0);

            if (ran==4)
              ta[i] = new Tama(width/2, 900+i*45, 2, 180);

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

            println(ran);
          }
        }
      }

      if (battlec==1)
      {
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
              random.remove(once-1);
            }

            way=int(random(random.get(0), random.get(random.size()-1)));

            if (once!=0) {
              if (random.indexOf(once)==-1)
                random.add(once-1, once);
            }

            if (way==1)
            {
              ta[i] = new Tama(567, 760, 10, radians(180));
            }
            if (way==2)
            {
              ta[i] = new Tama(602, 760, 10, radians(180));
            }
            if (way==3)
            {
              ta[i] = new Tama(635, 760, 10, radians(180));
            }//720

            ta[i].tint=255;
            ta[i].speed=7;
          }
        }
      }

      if (once==0)
      {
        gx=588;
        gy=600;
        once=1;
      }

      if (tintbasic>=140 && btint>=140)
      {
        tintbasic-=2;
        btint-=2;
      }

      Rect.bigg();

      heart(gx, gy);

      break;


    case battle:

      if (battlec==1)
      {
        battle5();
        fill(0);
        rect(580, 728, 150, 13.8);
        rect(644, 750, 28, 50);
        rect(600, 786, 150, 42);
        butten=true;
        basic=true;
      } else
        if (battlec==2)
          battle2();
        else
          if (battlec==3)
            battle3();
          else
            if (battlec==4)
              battle4();
            else
              if (battlec==5)
              {
                battle5();
                e.basic();
              }


      if (sep==false)
        heart(gx, gy);
      else
      {
        heart(hx, hy);
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
      image(gh, x, y, 27, 27);
  noTint();
}

void enter()
{
  if (keyPressed==true && key==ENTER)
  {
    enterc++;
    keyPressed=false;
  }
}


void hit()
{
  if (hit==1)
  {
    hp-=int(random(9, 13));

    if (hp<=0)
      gameover=1;

    // strong=true;

    hit=0;
  }
  if (hit==3)
  {
    hp+=recoverp;
    hit=0;
  }
}
/*void stop()
 {
 loud.close();
 minim.stop();
 super.stop();
 }*/
