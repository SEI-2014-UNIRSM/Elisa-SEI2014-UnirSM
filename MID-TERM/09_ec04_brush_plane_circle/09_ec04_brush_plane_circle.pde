// DRAWING TAIL OF CIRCLE COMPOSED OF CIRCLES
// Elisa Canini for the course SEI2014 @ UnirSM  
// github.com/ElisaCanini — github.com/SEI2014-UnirSM/Elisa-SEI2014-UnirSM
// Made for educational purposes, MIT License, April 2014, San Marino
// —

ArrayList <star> Planetario;

// Constants
int count;
int Y_AXIS = 1;
color c1, c2;

void setup() {
  size (displayWidth, displayHeight);

  Planetario = new ArrayList();

  // Define colors
  c1 = color(0, 128, 214);
  c2 = color(160, 203, 255);

  frameRate(24);
} // void setup()

void draw() {
  // Background
  setGradient(0, 0, width, height, c1, c2, Y_AXIS); //se scrivi X_AXIS inverte

  for (int n=0; n<Planetario.size(); n++) {
    star S = Planetario.get(n);
    S.display();

    if (S.eta > 24*10) { //10 sec
      Planetario.remove(n);
    }
  }
  
   /*count ++;
  
  if(count<24*10){ //definire il tempo di durata della registrazione
    //salva
    saveFrame ("fotogramma_####.jpeg");
  }*/
  
} // draw()

void setGradient(int x, int y, float w, float h, color c1, color c2, int axis ) {
  // colora per linee, ogni linea cambia colore e forma il gradiente
  noFill();

  if (axis == Y_AXIS) {  // Top to bottom gradient
    for (int i = y; i <= y+h; i++) {
      float inter = map(i, y, y+h, 0, 1);
      color c = lerpColor(c1, c2, inter);
      stroke(c);
      line(x, i, x+w, i);
    }
  }
} // void setgradient()


void mouseDragged() {
  //crea una stella nel punto cliccato

  float L = map(mouseY, 0, height, 0, 60);
  float H = map(mouseX, 0, width, 0, 100);

  star nuova = new star(mouseX, mouseY, random(3, 8), color(255, 255, 255, 100));
  //aggiungi al planetario
  Planetario.add(nuova);
  
} // void mouseDragged()

//esportare i fotogrammi in immagini (vedi framerate)
/*void keyPressed () {
  saveFrame ("fotogramma_####.jpeg");
} // void keyPressed()*/
