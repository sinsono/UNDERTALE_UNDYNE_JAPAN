Movie gameover;

Gif move;
Gif up;

Minim minim;
AudioPlayer titlebgm;
AudioPlayer bgm;
AudioPlayer killsound;
AudioPlayer loud;
AudioPlayer decide;
AudioPlayer select;
AudioPlayer save;
AudioPlayer hits;
AudioPlayer encount;
AudioPlayer food;
AudioPlayer appear;
AudioPlayer start;
AudioPlayer up1;
AudioPlayer gv;

ArrayList<Boolean> hmovem;


void setup()
{
  move = new Gif(this, "movie/undynemove.gif");
  move.loop();
  up = new Gif(this, "movie/up.gif");
  gameover = new Movie(this, "gameover.mp4");

  minim = new Minim(this);
  titlebgm = minim.loadFile("sound/titlebgm.mp3");
  bgm = minim.loadFile("sound/bgm.mp3");
  killsound = minim.loadFile("sound/attack.mp3");
  loud = minim.loadFile("sound/loud.mp3");
  select = minim.loadFile("sound/select.mp3");
  decide = minim.loadFile("sound/decide.mp3");
  save = minim.loadFile("sound/save.mp3");
  hits = minim.loadFile("sound/hits.mp3");
  encount = minim.loadFile("soud/encount.mp3");
  food = minim.loadFile("sound/food.mp3");
  appear = minim.loadFile("sound/appear.mp3");
  start = minim.loadFile("sound/start.mp3");
  up1 = minim.loadFile("sound/up.mp3");
  gv = minim.loadFile("sound/gv.mp3");

  item = new ArrayList();
  top3 = new ArrayList();
  random = new ArrayList<Integer>();
  dalist = new ArrayList<Integer>();
  guardm = new ArrayList<Boolean>();
  hmovem = new ArrayList<Boolean>();
  name = new ArrayList<String>();

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
  h = loadImage("object/h.png");
  gh = loadImage("object/gh.png");
  f = loadImage("butten/f.png");
  a = loadImage("butten/a.png");
  i = loadImage("butten/i.png");
  m = loadImage("butten/m.png");
  cf = loadImage("butten/cf.png");
  ca = loadImage("butten/ca.png");
  ci = loadImage("butten/ci.png");
  cm = loadImage("butten/cm.png");
  lvhp = loadImage("rest/lvhp.png");
  maxhp = loadImage("rest/56.png");
  az = loadImage("rest/attackzone.png");
  miss = loadImage("effect/miss.png");
  d1 = loadImage("effect/d1.png"); //damage motion
  d2 = loadImage("effect/d2.png");
  d3 = loadImage("effect/d3.png");
  d4 = loadImage("effect/d4.png");
  d5 = loadImage("effect/d5.png");
  d6 = loadImage("effect/d6.png");
  yuusya = loadImage("rest/yuusya.png");
  heroname = loadImage("rest/heroname.png");
  bw = loadImage("rest/blackwind.png");
  explor = loadImage("rest/bunseki.png");
  uexplain = loadImage("rest/usetumei.png");
  column = loadImage("rest/item.jpg");
  batasuko = loadImage("rest/batasuko.png");
  spider = loadImage("rest/spider.png");
  yukidaru = loadImage("rest/yukidaru.png");
  kissyu = loadImage("rest/kissyu.png");
  bitya = loadImage("rest/bitya.jpg");
  eatba = loadImage("rest/eatba.png");
  eatyukidaru = loadImage("rest/eatyukidaru.png");
  eatkissyu = loadImage("rest/eatkissyu.png");
  eatspider = loadImage("rest/usespider.png");
  eatbitya = loadImage("rest/eatbitya.png");
  bdown = loadImage("object/bdown.png");
  red = loadImage("object/rdown.png");
  yellow = loadImage("object/ydown.png");
  white = loadImage("object/bullet.png");
  blockr = loadImage("object/blockr.png");
  blockl = loadImage("object/blockl.png");
  blocku = loadImage("object/blocku.png");
  blockd = loadImage("object/blockd.png");
  da0=loadImage("effect/da0.jpg");
  da1=loadImage("effect/da1.jpg");
  da2=loadImage("effect/da2.jpg");
  da3=loadImage("effect/da3.jpg");
  da4=loadImage("effect/da4.jpg");
  da5=loadImage("effect/da5.jpg");
  da6=loadImage("effect/da6.jpg");
  da7=loadImage("effect/da7.jpg");
  da8=loadImage("effect/da8.jpg");
  da9=loadImage("effect/da9.jpg");

  // b = new Battle();
  e = new Explain();
  Rect = new Rect();

  size(1200, 900);
  background(0);
  frameRate(60);
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
