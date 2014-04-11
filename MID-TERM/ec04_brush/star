// STAR
// Elisa Canini for the course SEI2014 @ UnirSM
// github.com/ElisaCanini — github.com/SEI2014-UnirSM/Elisa-SEI2014-UnirSM
// Made for educational purposes, MIT License, March 2014, San Marino
// —

class star {

  float x, y, r;
  color c;

  int num;
  float d; //sposta rispetto alla circonferenza
  
  float t;
  float aplus; //incrementa l'angolo
  
  int eta;
  

  star(float _x, float _y, float _r, color _c) {
    x = _x;
    y = _y;
    r = _r;
    c = _c;

    num = 24;
    d = r/8;
    
    t = 0;
    aplus = 0;
    eta = 0;
  }

  void display() {
    //disegno circonferenza
    fill (c,128);
    noStroke();
    //ellipse (x, y, r*2, r*2);

    //vertici
    float a = TWO_PI / num;
    
    beginShape();
    
    for (int n=0; n<num; n++) {
      
      //circonferenza esterna
      //la xP e la Yp dipendono da a (angolo) che dipende da num
      //lo moltiplico per il raggio
      // poi lo sommo a x e y perché i suoi valori andranno da -1 a 1
      float dd = noise(t, n*10)*r/4;
      
      float xP = x + cos(a*n + aplus)*(r+d+dd);
      float yP = y + sin(a*n + aplus)*(r+d+dd);
      //ellipse (xP, yP, 5, 5);
      vertex(xP, yP);
      
      //circonferenza interna
      float xPi = x + cos(a*n+a/2 + aplus)*(r-d+dd);
      float yPi = y + sin(a*n+a/2 + aplus)*(r-d+dd);
      //ellipse (xPi, yPi, 5, 5);
      vertex(xPi, yPi);
    }
    
    endShape(CLOSE);
    // t += 0.1; è la stessa cosa che ho scritto sotto
    t = t+0.1;
    aplus += 0.005;
    
    eta ++;
    
  }
}
