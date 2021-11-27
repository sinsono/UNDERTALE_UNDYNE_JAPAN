void setup()
{
  //\move = new Movie(this,"undynemove.mp4");
  /*dead = new Movie(this, "gameover.mp4");
   
   minim = new Minim(this);
   bgm = minim.loadFile("bgm.mp3");
   killsound = minim.loadFile("attack.wav");
   loud = minim.loadFile("loud.mp3");
   select = minim.loadFile("select.mp3");
   decide = minim.loadFile("decide.mp3");*/

  item = new ArrayList();
  top3 = new ArrayList();
  random = new ArrayList<Integer>();

  item.add("batasuko");
  item.add("yukidaru1");
  item.add("yukidaru2");
  item.add("yukidaru3");
  item.add("kissyu");
  item.add("spider");
  item.add("bitya1");
  item.add("bitya2");

  random.add(1);
  random.add(2);
  random.add(3);
  random.add(4);

  aaa=loadImage("a.jpg");
  h = loadImage("h.png");
  gh = loadImage("gh.png");
  f = loadImage("f.png");
  a = loadImage("a.png");
  i = loadImage("i.png");
  m = loadImage("m.png");
  cf = loadImage("cf.png");
  ca = loadImage("ca.png");
  ci = loadImage("ci.png");
  cm = loadImage("cm.png");
  lvhp = loadImage("lvhp.png");
  maxhp = loadImage("56.png");
  az = loadImage("attackzone.png");
  miss = loadImage("miss.png");
  d1 = loadImage("d1.png"); //damage motion
  d2 = loadImage("d2.png");
  d3 = loadImage("d3.png");
  d4 = loadImage("d4.png");
  d5 = loadImage("d5.png");
  d6 = loadImage("d6.png");
  yuusya = loadImage("yuusya.png");
  heroname = loadImage("heroname.png");
  bw = loadImage("blackwind.png");
  explor = loadImage("bunseki.png");
  uexplain = loadImage("usetumei.png");
  column = loadImage("item.jpg");
  batasuko = loadImage("batasuko.png");
  spider = loadImage("spider.png");
  yukidaru = loadImage("yukidaru.png");
  kissyu = loadImage("kissyu.png");
  bitya = loadImage("bitya.jpg");
  eatba = loadImage("eatba.png");
  eatyukidaru = loadImage("eatyukidaru.png");
  eatkissyu = loadImage("eatkissyu.png");
  eatspider = loadImage("usespider.png");
  eatbitya = loadImage("eatbitya.png");
  bdown = loadImage("bdown.png");
  red = loadImage("rdown.png");
  white = loadImage("bullet.png");
  blockr = loadImage("blockr.png");
  blockl = loadImage("blockl.png");
  blocku = loadImage("blocku.png");
  blockd = loadImage("blockd.png");

  // b = new Battle();
  e = new Explain();
  Rect = new Rect();

  size(1200, 900);
  background(0);
  frameRate(60);
  rectMode(CENTER);
  rectpos=height/1.47;
  smooth();

  PFont font = createFont("Meiryo", 50);
  textFont(font);

  ta = new Tama[50];

  for (int i=0; i<3; i++)
  {
    ta[i] = new Tama(width/2, -i*150+50, 3, 0);
  }
  for (int i=0; i<10; i++)
  {
    if (i==0 || i==6)
      ta[i+3] =  new Tama(width-200, height/2+60, 15, 90);

    if (i==1 || i==5 || i==7)
      ta[i+3] =  new Tama(width/2, 900, 15, 180);

    if (i==2 || i==4 || i==8)
      ta[i+3] =  new Tama(200, height/2+60, 15, -90);

    if (i==3 || i==9)
      ta[i+3] =  new Tama(width/2, 100, 15, 0);
  }
  ta[0].c=1;
}
