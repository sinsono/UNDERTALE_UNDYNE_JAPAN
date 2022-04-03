Gif move;

Movie dead;

Minim minim;
AudioPlayer titlebgm;
AudioPlayer bgm;
AudioPlayer killsound;
AudioPlayer loud;
AudioPlayer decide;
AudioPlayer select;
AudioPlayer save;
AudioPlayer hits;


ArrayList<Boolean> hmovem;

int frame=60;


void setup()
{
  move = new Gif(this, "undynemove.gif");
  move.loop();
  //dead = new Movie(this, "gameover.mp4");

  minim = new Minim(this);
  titlebgm = minim.loadFile("titlebgm.mp3");
  bgm = minim.loadFile("bgm.mp3");
  killsound = minim.loadFile("attack.mp3");
  loud = minim.loadFile("loud.mp3");
  select = minim.loadFile("select.mp3");
  decide = minim.loadFile("decide.mp3");
  save = minim.loadFile("save.mp3");
  hits = minim.loadFile("hits.mp3");

  item = new ArrayList();
  top3 = new ArrayList();
  random = new ArrayList<Integer>();
  guardm = new ArrayList<Boolean>();
  hmovem = new ArrayList<Boolean>();
  dalist = new ArrayList<Integer>();
  speedx = new FloatList();
  speedy = new FloatList();
  zx = new FloatList();
  zy = new FloatList();

  guardm.add(false);
  guardm.add(false);
  guardm.add(false);
  guardm.add(false);
  hmovem.add(false);
  hmovem.add(false);
  hmovem.add(false);
  hmovem.add(false);

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

  title=loadImage("undynesimulater.png");
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
  yellow = loadImage("ydown.png");
  white = loadImage("bullet.png");
  blockr = loadImage("blockr.png");
  blockl = loadImage("blockl.png");
  blocku = loadImage("blocku.png");
  blockd = loadImage("blockd.png");
  da0=loadImage("da0.jpg");
  da1=loadImage("da1.jpg");
  da2=loadImage("da2.jpg");
  da3=loadImage("da3.jpg");
  da4=loadImage("da4.jpg");
  da5=loadImage("da5.jpg");
  da6=loadImage("da6.jpg");
  da7=loadImage("da7.jpg");
  da8=loadImage("da8.jpg");
  da9=loadImage("da9.jpg");

  // b = new Battle();
  e = new Explain();
  Rect = new Rect();

  size(1200, 900);
  background(0);
  frameRate(frame);
  rectMode(CENTER);
  rectpos=height/1.47;
  noSmooth();

  PFont font = createFont("Meiryo", 50);
  textFont(font);

  ta = new Tama[300];

  for (int i=0; i<3; i++)
  {
    ta[i] = new Tama(width/2, ggy-400-i*150, 3, 0);
    ta[i].dir=90;
  }
  for (int i=0; i<10; i++)
  {
    if (i==0 || i==6)
    {
      ta[i+3] =  new Tama(ggx+400+i*200, height/2+60, 15, 90);
      ta[i+3].dir=-180;
    }

    if (i==1 || i==5 || i==7)
    {
      ta[i+3] =  new Tama(width/2, ggy+400+i*200, 15, 180);
      ta[i+3].dir=-90;
    }

    if (i==2 || i==4 || i==8)
    {
      ta[i+3] =  new Tama(ggx-400-i*200, height/2+60, 15, -90);
      ta[i+3].dir=180;
    }

    if (i==3 || i==9)
    {
      ta[i+3] =  new Tama(width/2, ggy-400-i*200, 15, 0);
      ta[i+3].dir=90;
    }
  }
  ta[0].c=1;
}
