PImage title;
char [] n=new char[8];
ArrayList <String> name;
String na;

int fillc=0;
int fillc1=0;
int namec=0;

void title()
{
  imageMode(CENTER);
  image(title, width/2, height/2, width+300, height);
  imageMode(CORNER);
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
        n[namec]=key;
        name.add(namec, String.valueOf(n[namec]));
        namec++;
      }
    }
    keyPressed=false;
  }

  for (int i=0; i<namec; i++)
  {
    fill(255);
    textSize(50);
    text(name.get(i).toUpperCase(), 565+i*40, 700);
  }
}
