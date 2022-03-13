PImage az; //attack zone

float bars=10; // bar speed
float bx=1080; // bar x
int damage;
int tint=255;

void attack()
{
  if (bx<=0)
  {
    miss();
  } else {
    if (keyPressed && key==ENTER)
    {
      //killsound.play();
      damage=1750-floor(abs(bx-600))*3;
      damages=damage;
      uhp-=damage;
      tint(tint);
      image(az, 100, height/1.73, 1000, 185);
      noTint();
      status=motion;
    }

    tint(tint);
    image(az, 100, height/1.73, 1000, 185);
    noTint();

    stroke(0);
    strokeWeight(3);
    fill(255);
    rect(bx, height/1.47, 13, 195);
  }

  bx-=bars;
}
