ArrayList<Boolean> guardm;

void guard()
{
  if (guardm.get(0)==true)
  {
    blockc=90;
    redblock=0;
    t=0;
  }
  if (guardm.get(1)==true)
  {
    blockc=-90;
    redblock=0;
    t=0;
  }
  if (guardm.get(2)==true)
  {
    blockc=-180;
    redblock=0;
    t=0;
  }
  if (guardm.get(3)==true)
  {
    blockc=180;
    redblock=0;
    t=0;
  }

  tint(255);
  if (blockc==90)
    image(blocku, 550, 460, 110, 110);

  if (blockc==-90)
    image(blockd, 548, 458, 110, 110);

  if (blockc==-180)
    image(blockr, 550, 460, 110, 110);

  if (blockc==180)
    image(blockl, 550, 460, 110, 110);
  noTint();

  ///////////////////////////////////redblock
  if (redblock!=0)
  {
    t++;
    if (t>=15)
    {
      redblock=0;
      t=0;
    }
    if (redblock==90)
    {
      lx1=-42;
      lx2=48;
      ly1=18;
      ly2=ly1;
    }
    if (redblock==-180)
    {
      lx1=48;
      lx2=lx1;
      ly1=19;
      ly2=105;
    }
    if (redblock==-90)
    {
      lx1=-42;
      lx2=48;
      ly1=107;
      ly2=ly1;
    }
    if (redblock==180)
    {
      lx1=-45;
      lx2=lx1;
      ly1=106;
      ly2=18;
    }

    pushMatrix();
    stroke(255, 0, 0);
    strokeWeight(4);
    translate(width/2, height/2);
    line(lx1, ly1, lx2, ly2);
    popMatrix();
  }
}
