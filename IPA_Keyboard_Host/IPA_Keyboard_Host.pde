import processing.net.*; 

Client c; 
int val = 0;
PImage chart;
boolean simpleTest;
boolean mouseTest;
 
void setup() { 
  frameRate(120);
  fullScreen();
  // Connect to the local machine at port 5204.
  // This example will not run if you haven't
  // previously started a server on this port.
  c = new Client(this, "10.0.0.243", 5204);
  chart = loadImage("IPAChart.png");
  
  fill(0,0,0,127);
  rectMode(CORNERS);
}
 
void draw() {
  image(chart,0,145,768,1075);
  
  simpleTest = false;
  
  //Pulmonic Consonants
  //Plosives
  between( 107, 214 ,  134, 241, 127); //p
  between( 135, 214 ,  162, 241, 126); //b
  between( 227, 214 ,  307, 241, 125); //t
  between( 307, 214 ,  397, 241, 124); //d
  between( 397, 214 ,  425, 241, 123); //t.
  between( 425, 214 ,  453, 241, 122); //d.
  between( 453, 214 ,  480, 241, 121); //c
  between( 481, 214 ,  508, 241, 120); //J-
  between( 508, 214 ,  536, 241, 119); //k
  between( 536, 214 ,  564, 241, 118); //g
  between( 564, 214 ,  591, 241, 117); //q
  between( 592, 214 ,  619, 241, 116); //G
  between( 684, 214 ,  712, 241, 115); //?
  
  //Nasals
  between( 135, 241 ,  162, 267, 114); //m
  between( 195, 241 ,  227, 267, 113); //m,
  between( 307, 241 ,  397, 267, 112); //n
  between( 425, 241 ,  453, 267, 111); //n.
  between( 481, 241 ,  508, 267, 110); //,n
  between( 536, 241 ,  564, 267, 109); //n,
  between( 592, 241 ,  619, 267, 108); //N
  
  //Trills
  between( 135, 267 ,  162, 294, 107); //B
  between( 307, 267 ,  397, 294, 106); //r
  between( 592, 267 ,  619, 294, 105); //R
  
  //Taps/Flaps
  between( 195, 294 ,  227, 321, 104); //v'
  between( 307, 294 ,  397, 321, 103); ///r
  between( 425, 294 ,  453, 321, 102); //.r
  
  //Fricatives
  between( 107, 321 ,  134, 347, 101); //phi
  between( 135, 321 ,  162, 347, 100); //beta
  between( 162, 321 ,  194, 347,  99); //f
  between( 195, 321 ,  227, 347,  98); //v
  between( 227, 321 ,  254, 347,  97); //theta
  between( 255, 321 ,  282, 347,  96); //eth
  between( 282, 321 ,  307, 347,  95); //s
  between( 307, 321 ,  332, 347,  94); //z
  between( 332, 321 ,  364, 347,  93); //esh
  between( 365, 321 ,  397, 347,  92); //ezh
  between( 397, 321 ,  425, 347,  91); //.s
  between( 425, 321 ,  453, 347,  90); //z.
  between( 453, 321 ,  480, 347,  89); //c,
  between( 481, 321 ,  508, 347,  88); //j,
  between( 508, 321 ,  536, 347,  87); //x
  between( 536, 321 ,  564, 347,  86); //.y
  between( 564, 321 ,  591, 347,  85); //X
  between( 592, 321 ,  619, 347,  84); //R|
  between( 619, 321 ,  651, 347,  83); //h-
  between( 652, 321 ,  684, 347,  82); //?|
  between( 684, 321 ,  711, 347,  81); //h
  between( 711, 321 ,  740, 347,  80); //h'
  
  //Lateral Fricatives
  between( 227, 347 ,  307, 374,  79); //l-
  between( 307, 347 ,  397, 374,  78); //lezh
  
  //Approximants
  between( 195, 374 ,  227, 400,  76); //vu
  between( 307, 374 ,  397, 400,  75); //r|
  between( 425, 374 ,  453, 400,  74); //r|.
  between( 481, 374 ,  508, 400,  73); //j
  between( 536, 374 ,  564, 400,  72); //m|.
  
  //Lateral Approximants
  between( 307, 400 ,  397, 427,  71); //l
  between( 425, 400 ,  453, 427,  70); //l.
  between( 481, 400 ,  508, 427,  69); //y|
  between( 536, 400 ,  564, 427,  68); //L
  
  
  //Non-Pulmonic Consonants
  //Clicks
  between(  30, 514 ,  146, 540,  67); //O.
  between(  30, 540 ,  146, 567,  66); //|
  between(  30, 567 ,  146, 593,  65); //!
  between(  30, 593 ,  146, 620,  64); //|=
  between(  30, 620 ,  146, 646,  63); //||
  
  //Voiced implosives
  between( 146, 514 ,  262, 540,  62); //b'
  between( 146, 540 ,  262, 567,  61); //d'
  between( 146, 567 ,  262, 593,  60); //,f'
  between( 146, 593 ,  262, 620,  59); //g'
  between( 146, 620 ,  262, 646,  58); //G'
  
  //Ejectives
  between( 262, 514 ,  378, 646,  57); //'
  
  
  //Other Symbols
  between(  30, 687 ,  204, 711,  56); //w|
  between(  30, 712 ,  204, 736,  55); //w
  between(  30, 737 ,  204, 761,  54); //'h|
  between(  30, 762 ,  204, 786,  53); //H
  between(  30, 787 ,  204, 811,  52); //'?|-
  between(  30, 812 ,  204, 836,  51); //?-
  between( 204, 687 ,  229, 711,  50); //.c
  between( 230, 687 ,  255, 711,  49); //.z
  between( 204, 712 ,  378, 736,  48); //|r|
  between( 204, 737 ,  378, 761,  47); //'g,
  
  
  //Vowels
  between( 459, 500 ,  494, 531,  46); //i
  between( 495, 500 ,  530, 531,  45); //y
  between( 570, 500 ,  605, 531,  44); //i-
  between( 606, 500 ,  641, 531,  43); //u-
  between( 681, 500 ,  716, 531,  42); //m|
  between( 716, 500 ,  752, 531,  41); //u
  
  between( 507, 531 ,  542, 558,  40); //I
  between( 543, 531 ,  578, 558,  39); //Y
  between( 654, 531 ,  703, 556,  38); //omega|
  
  between( 497, 558 ,  532, 589,  37); //e
  between( 533, 558 ,  568, 589,  36); //o/
  between( 589, 556 ,  624, 583,  35); //e|
  between( 624, 556 ,  660, 583,  34); //o-
  between( 681, 556 ,  716, 587,  33); //
  between( 716, 556 ,  752, 587,  32); //o
  
  between( 606, 583 ,  662, 615,  31); //e||
  
  between( 535, 612 ,  570, 643,  30); //epselon
  between( 571, 612 ,  606, 643,  29); //oe
  between( 606, 615 ,  642, 643,  28); //epselon|
  between( 642, 615 ,  681, 643,  27); //(epselon
  between( 681, 612 ,  716, 643,  26); //v|
  between( 716, 612 ,  752, 643,  25); //c|
  
  between( 545, 643 ,  602, 669,  24); //ae
  between( 623, 643 ,  681, 669,  23); //a|
  
  between( 572, 669 ,  607, 700,  22); //a
  between( 608, 669 ,  643, 700,  21); //OE
  between( 681, 669 ,  716, 700,  20); //A
  between( 716, 669 ,  752, 700,  19); //A|
  
  
  //Suprasegmentals
  between( 545, 759 ,  750, 784,  18); //'
  between( 545, 784 ,  750, 809,  17); //,
  between( 545, 809 ,  750, 834,  16); //:
  between( 545, 834 ,  750, 859,  15); //;
  between( 545, 859 ,  750, 883,  14); //`'
  between( 545, 884 ,  750, 908,  13); //|
  between( 545, 908 ,  750, 933,  12); //||
  between( 545, 933 ,  750, 958,  11); //.
  between( 545, 958 ,  750, 983,  10); //~
  
  
  //Tones and Word Accents
  between( 545,1031 ,  647,1054,   9); //''
  between( 545,1054 ,  647,1077,   8); //'
  between( 545,1077 ,  647,1100,   7); //-
  between( 545,1100 ,  647,1123,   6); //`
  between( 545,1123 ,  647,1145,   5); //``
  between( 545,1146 ,  647,1168,   4); //\/
  between( 545,1168 ,  647,1193,   3); //^
  
  between( 648,1031 ,  750,1054,   2); ///|
  between( 648,1054 ,  750,1077,   1); //\|
  between( 648,1077 ,  750,1100,   0); //-|
  between( 648,1100 ,  750,1123, 128); //_|
  between( 648,1123 ,  750,1145, 129); ///\|
  between( 648,1146 ,  750,1168, 130); ///
  between( 648,1168 ,  750,1193, 131); //\
  
  
  //Diacritics
  between(  30,  875,  190, 901, 132); //o
  between(  30,  901,  190, 928, 133); //\/
  between(  30,  928,  190, 954, 134); //h
  between(  30,  954,  190, 981, 135); //,
  between(  30,  981,  190,1007, 136); //.
  between(  30, 1007,  190,1034, 137); //+
  between(  30, 1034,  190,1060, 138); //_
  between(  30, 1060,  190,1087, 139); //..
  between(  30, 1087,  190,1114, 140); //x
  between(  30, 1114,  190,1140, 141); //,
  between(  30, 1140,  190,1167, 142); //,.
  between(  30, 1167,  190,1193, 143); ///'
  
  between( 190,  875,  351, 901, 144); //..
  between( 190,  901,  351, 928, 145); //~
  between( 190,  928,  351, 954, 146); //,..
  between( 190,  954,  351, 981, 147); //w
  between( 190,  981,  351,1007, 148); //j
  between( 190, 1007,  351,1034, 149); //.y
  between( 190, 1034,  351,1060, 150); //?|
  
  between( 190, 1060,  512,1087, 151); //~
  between( 190, 1087,  512,1114, 152); //_,
  between( 190, 1114,  512,1140, 153); //-,
  between( 190, 1140,  512,1167, 154); //-|
  between( 190, 1167,  512,1193, 155); //|-
  
  between( 351,  875,  512, 901, 156); //|-|
  between( 351,  901,  512, 928, 157); //|_|
  between( 351,  928,  512, 954, 158); //|-_|
  between( 351,  954,  512, 981, 159); //~
  between( 351,  981,  512,1007, 160); //n
  between( 351, 1007,  512,1034, 161); //l
  between( 351, 1034,  512,1060, 162); //-|
}

void between(int minx,int miny , int maxx,int maxy, int ret) {
  if (simpleTest) return;
  if (mouseX > minx && mouseX < maxx && mouseY > miny && mouseY < maxy) {
    simpleTest = true;
    if (mouseTest) {
      c.write(ret);
      fill(0,127);
      mouseTest = false;
    }
    else {
      fill(0,63);
    }
    rect(minx,miny , maxx,maxy);
  }
}

void mousePressed() {
  if (mouseY < 145 || mouseY > 1220) {
    exit();
  }
  
  mouseTest = true;
}
