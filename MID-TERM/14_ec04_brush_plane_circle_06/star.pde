class star {

  float x, y, r;
  color c;

  float num;
  float d; //sposta rispetto alla circonferenza

  int eta,Rdelta,etaMax;
  int R = 1;
   
  float r1 = 10;
  float r2 = 10;

  float t;
  float aplus; //incrementa l'angolo


  star(float _x, float _y, float _r, color _c) {
       
    x = _x;
    y = _y;
    r = _r;
    c = _c;

    num = 1; //numero dei punti (aumentandolo si capisce il funzionamento)
    d = 0;

    t = 0;
    aplus = 0;
    eta = 0;
    Rdelta = (int) random(1,3);
    etaMax = (int) random(50);
  }

  void display() {
    //disegno circonferenza
    //se vuoi un effetto psicadelia usa il rimpimento sottostante
    //e cambia metodo colore in HSB
    //fill (random (0, 360), 100, 100, 90);
    fill (c);

    noStroke();
    //ellipse (x, y, r*2, r*2);

    //vertici
    float a = TWO_PI / num;

    //beginShape();

    for (int n=0; n<num; n++) {


      //scia 1 > ex-circonferenza esterna
      //la xP e la Yp dipendono da a (angolo) che dipende da num
      //lo moltiplico per il raggio
      // poi lo sommo a x e y perché i suoi valori andranno da -1 a 1
      float d = noise(t, n*10)*r/4;

      float xP = x + cos(a*n)*(r+d);
      float yP = y + sin(a*n)*(r+d);
      ellipse (xP, yP, r1+R, r2+R);
      //vertex(xP, yP); 

      //scia 2 > ex-circonferenza interna
      float xPi = x + cos(a*n+a/2)*(r-d);
      float yPi = y + sin(a*n+a/2)*(r-d);
      ellipse (xPi, yPi, r1+R, r2+R);
      //vertex(xPi, yPi);
    } //chiusura for


  //  endShape(CLOSE);
    // t += 0.1; è la stessa cosa che ho scritto sotto
    t = t+0.1;
    aplus += 0.005;

    eta ++;
     if (eta < etaMax) {
     R += Rdelta;
     }
  }
}
