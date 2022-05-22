PImage title;
char [] n=new char[8];
float [] textx=new float[7];
float [] textx1=new float[7];
ArrayList <String> name;
String na;

int fillc=0;
int fillc1=0;
int namec=0;

void title()
{
  textx[0]=565;
  textx1[0]=565;
  imageMode(CENTER);
  image(title, width/2, height/2, width+300, height);
  imageMode(CORNER);
  textSize(50);
  text("yourname:", 300, 700);


  if (fillc1%2==0)
    stroke(255);
  else
    stroke(0);
  strokeWeight(3);
  line(570+namec*40, 660, 570+namec*40, 710);
  fillc++;
  if (fillc%10==0)
  {
    fillc1++;
  }


  if (keyPressed)
  {
    if (key!=keyCode)
    {
      if (key==ENTER)
      {
        titlebgm.close();
        scene=1.5;
      }
      if (key==BACKSPACE)
      {
        if (namec!=0)
        {
          name.remove(namec-1);
          namec--;
        }
      } else {
        if (namec!=7)
        {
          if (namec!=6)
          {
            textx[namec+1]=textx[namec];
            textx1[namec+1]=textx1[namec];
          }
          n[namec]=key;
          name.add(namec, String.valueOf(n[namec]));
          namec++;
          if (namec!=7)
          {
            if (key=='i' || key=='j' || key=='f' || key=='l')
            {
              if (key=='f')
              {
                textx[namec]=textx[namec-1]-5;
                textx1[namec]=textx1[namec-1]-5*0.625;
              } else
              {
                textx[namec]=textx[namec-1]-10;
                textx1[namec]=textx1[namec-1]-10*0.625;
              }
            } else
              if (key=='w')
              {
                textx[namec]=textx[namec-1]+10;
                textx1[namec]=textx1[namec-1]+10*0.625;
              }
          }
        }
      }
    }
    keyPressed=false;
  }

  for (int i=0; i<namec; i++)
  {
    fill(255);
    textSize(50);
    text(name.get(i).toUpperCase(), textx[i]+i*40, 700);
  }
}
