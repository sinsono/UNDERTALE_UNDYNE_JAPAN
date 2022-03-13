ArrayList item;
ArrayList top3;

PImage column;
PImage batasuko;
PImage yukidaru;
PImage kissyu;
PImage spider;
PImage bitya;
PImage eatba;
PImage eatyukidaru;
PImage eatkissyu;
PImage eatspider;
PImage eatbitya;

int itemlength=7;
int itemc=0;
int  deep;
int columnc;
int ba, yu1, yu2, yu3, ki, sp, bi1, bi2;

void item()
{
  ba=top3.indexOf("batasuko");
  yu1=top3.indexOf("yukidaru1");
  yu2=top3.indexOf("yukidaru2");
  yu3=top3.indexOf("yukidaru3");
  ki=top3.indexOf("kissyu");
  sp=top3.indexOf("spider");
  bi1=top3.indexOf("bitya1");
  bi2=top3.indexOf("bitya2");

  if (ba==-1)
  {
  } else
    image(batasuko, 250, 530+60*ba, 450, 50);

  if (yu1==-1)
  {
  } else
    image(yukidaru, 250, 530+60*yu1, 460, 55);

  if (yu2==-1)
  {
  } else
    image(yukidaru, 250, 530+60*yu2, 460, 55);

  if (yu3==-1)
  {
  } else
    image(yukidaru, 250, 530+60*yu3, 460, 55);

  if (ki==-1)
  {
  } else {
    tint(210);
    image(kissyu, 243, 530+55*ki, 460, 63);
    noTint();
  }

  if (bi1==-1)
  {
  } else {
    tint(230);
    image(bitya, 250, 530+60*bi1, 340, 55);
    noTint();
  }

  if (bi2==-1)
  {
  } else {
    tint(230);
    image(bitya, 250, 530+60*bi2, 340, 55);
    noTint();
  }

  if (sp==-1)
  {
  } else {
    tint(240);
    image(spider, 248, 530+55*sp, 470, 63);
    noTint();
  }

  heart(200, 540+columnc*60);

  //println(item.get(itemc));

  if (keyPressed==true)
  {
    if (keyCode==DOWN)
    {
      if (itemc==itemlength)
      {
      } else {
        itemc++;
        if (columnc==2)
        {
          top3.remove(0);
          top3.add(item.get(itemc));
        } else
          columnc++;
      }
      keyPressed=false;
    }
    if (keyCode==UP)
    {
      if (itemc==0)
      {
      } else {
        itemc--;
        if (columnc==0)
        {
          top3.remove(2);
          top3.add(0, item.get(itemc));
        } else
          columnc--;
      }
      keyPressed=false;
    }
  }


  if (itemlength==2)
  {
  } else {
    image(column, 1030, 525, 30, 180);

    for (int i=0; i<itemlength+1; i++)
    {
      fill(255);
      rect(1047, 17*i+555, 6, 6);
    }
    rect(1047, itemc*17+555, 13, 13);
  }
}
