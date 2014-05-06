PFont f;

import ddf.minim.*;
import ddf.minim.ugens.*;

Minim minim;
AudioOutput out;
Oscil wave1, wave2, wave3;

void setup(){
  background(255);
  size(851,315);
  smooth();
  f = loadFont("DejaVuSansCondensed-20.vlw");
  textFont(f,20);
  
  //sound
  minim = new Minim(this);
  out = minim.getLineOut();
  wave1 = new Oscil( 440, 0.5f, Waves.TRIANGLE );
  wave2 = new Oscil( 440, 0.5f, Waves.TRIANGLE );
  wave3 = new Oscil( 440, 0.5f, Waves.TRIANGLE );
  wave1.patch( out );
  wave2.patch( out );
  wave3.patch( out );

}

int x =0;

void draw(){
  stroke(x,100,45);
  line(0,x,width,x);
  x++;
  
  //sound
  wave1.setAmplitude(0.3);
  wave2.setAmplitude(0.3);
  wave3.setAmplitude(0.3);
  
  wave1.setFrequency(600.0 - x);
  wave2.setFrequency(random(400.0) - x);
  wave3.setFrequency(350.0 - x);
  
  stroke(45,80,map(x,0,height,0,300));
  line(map(x,0,height,0,200), x, width-(1.8*x),0);
  
  if(x>height){
    strokeWeight(6);
    stroke(230);
    noFill();
    rect(550,140,285,135);
    fill(230);
    text("Introducción a Programación",560,170);
    text("para Artistas Visuales",560,192);
    
    f = loadFont("DejaVuSansCondensed-16.vlw");
    textFont(f,16);
    text("15 y 16 de mayo, 7:00-9:00pm",560,223);
    text("$25",560,243);
    text("Beta Local, Viejo San Juan",560,261);

    noLoop();
//    save("promo.jpg");
  }
}
