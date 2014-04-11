// KALEIDOSCOPE OF TRIANGLE AND CIRCLE
// Elisa Canini for the course SEI2014 @ UnirSM
// FROM: OpenProcessing Tweak of *@*http://www.openprocessing.org/sketch/603*@* 
// github.com/ElisaCanini — github.com/SEI2014-UnirSM/Elisa-SEI2014-UnirSM
// Made for educational purposes, MIT License, March 2014, San Marino
// —


float rot_off = 0.0; //coefficiente che determina l'inizio della rotazione
float rot_increment = 0.005; //coefficiente che determina la velocità ri rotazione generale
float line_translate = 720; //coefficiente che determina la scala
                            //NON CAPISCO COME SI COMPORTA CON TRANSLATE
int level = 0;
int count;
star A;

void setup() {
  size(1440, 860); //schermo pieno
  background(0);
  noStroke();
  smooth();
  
  frameRate(24);
  count = 0;
  
  A = new star(300, 300, 150);

}

void draw () {
  background(200, 0, 0);

  /*count ++;
  if(count<24){
    //salva
    saveFrame ("fotogramma_####.png");*/

  //(dove, cosa, quando, colore, colore, colore, trasparenza);
  //Perline(line_translate, level, rot_off, 200, 255, 150, 50);
  //Perline(line_translate, level, -rot_off, 255, 200, 150, 50); 
  Perline(line_translate, level, rot_off + PI, 150, 200, 255, 50);
  Perline(line_translate, level, -rot_off + PI, 200, 150, 255, 50); // uguale al precedente ma leggermente ruotato

  rot_off += rot_increment; //se si da un valore fisso non c'è rotazione
                            //il valore di rot deve essere incrementale
                            //ovvero (rot_off = 0) + (rot_increment = 0.005)

  if (rot_off > 360) rot_off = 0; //comando che riavvia la rotazione
                                  //in questo caso essendo 360 non ci sono interruzioni
}

void Perline(float tran, int lev, float rot, int r, int g, int b, int t) {
  if (lev < 5) { 
    pushMatrix();
    translate(tran, tran);
    rotate(rot);  
    //float size_them = 50 - (lev * 10);
    fill(r, g, b, t);
    //rectMode(CENTER);
    //rect(0,0,size_them,size_them);
    ellipse (0,0, random(20, 30), random (20, 30));
    //A.display();

    lev += 1;
    tran /= 2;

    //STRUTTURA DA DISEGNARE
    
    Perline(tran, lev, rot, r, g, b, t);
    Perline(-tran, lev, rot, b, g, r, t);
    Perline(tran, lev, -rot, g, r, b, t);
    Perline(-tran, lev, -rot, b, g, r, t);

    popMatrix(); 
  }
}

//esportare i fotogrammi in immagini (vedi framerate)
/*void keyPressed () {
  saveFrame ("fotogramma_####.png");
}*/












