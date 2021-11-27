void guard(/*float deg*/)
{
  if (keyPressed==true)
  {
    if (keyCode==UP) {
      blockc=1;
      redblock=0;
      t=0;
    }

    if (keyCode==DOWN) {
      /*if (deg==90 || deg==270)
       {
       blockc=2;
       redblock=0;
       t=0;
       } else {
       if (deg==0)
       {
       if(deg<=90)
       {
       deg+=0.1;
       }
       }
       }*/
      blockc=2;
      redblock=0;
      t=0;
    }

    if (keyCode==RIGHT) {
      blockc=3;
      redblock=0;
      t=0;
    }

    if (keyCode==LEFT) {
      blockc=4;
      redblock=0;
      t=0;
    }

    keyPressed=false;
  }


  tint(255);
  if (blockc==1)
    image(blocku, 550, 460, 110, 110);

  if (blockc==2)
    image(blockd, 550, 460, 110, 110);

  if (blockc==3)
    image(blockr, 550, 460, 110, 110);

  if (blockc==4)
    image(blockl, 550, 460, 110, 110);
  noTint();

  ///////////////////////////////////redblock
  if (redblock!=0)
  {
    t++;
    if (t>=10)
    {
      redblock=0;
      t=0;
    }
    if (redblock==1)
    {
      lx1=-42;
      lx2=48;
      ly1=18;
      ly2=ly1;
    }
    if (redblock==2)
    {
      lx1=48;
      lx2=lx1;
      ly1=19;
      ly2=105;
    }
    if (redblock==3)
    {
      lx1=-42;
      lx2=48;
      ly1=107;
      ly2=ly1;
    }
    if (redblock==4)
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
