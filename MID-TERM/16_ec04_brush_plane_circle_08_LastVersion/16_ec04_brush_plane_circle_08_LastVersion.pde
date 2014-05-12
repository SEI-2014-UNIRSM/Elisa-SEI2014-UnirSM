// DRAWING 2 DOUBLE AND SYMMETRIC TAILS OF DIFFERENT CIRCLE
// Elisa Canini for the course SEI2014 @ UnirSM  
// github.com/ElisaCanini — github.com/SEI2014-UnirSM/Elisa-SEI2014-UnirSM
// Made for educational purposes, MIT License, April 2014, San Marino
// —

ArrayList <star> Planetario;
ArrayList <star> Planetario2;

// Constants
int count;
int Y_AXIS = 1;
color c1, c2;
boolean saveF = false;

void setup() {
  background(0);
  //size (1280,720, OPENGL);
  size(1280, 720); // verifica la dimensione di output finale

  Planetario = new ArrayList();
  Planetario2 = new ArrayList();

  frameRate(24);
} // void setup()

void draw() {
  // Background
  // setGradient(0, 0, width, height, c1, c2, Y_AXIS); //se scrivi X_AXIS inverte
  background(0, 0, 255);

  for (int n=0; n<Planetario.size(); n++) {
    star S = Planetario.get(n);
    S.display();

    if (S.eta > 24*20) { //10 sec
    Planetario.remove(n);
  }
}

for (int n=0; n<Planetario2.size(); n++) {
  star S = Planetario2.get(n);
  S.display();

  if (S.eta > 24*20) { //10 sec
  Planetario2.remove(n);
}
}

if (saveF)  saveFrame ("fotogramma_####.tga");
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
  //crea la scia nel punto cliccato
  //il random definisce la distanza tra i punti, non la dimensione del punto
  star nuova = new star(mouseX, mouseY, random (5, 8), color(255, 255, 255, 50));
  star nuova2 = new star(mouseX, mouseY, random (4, 6), color(255, 255, 255, 30));
  //aggiungi al planetario
  Planetario.add(nuova);
  Planetario2.add(nuova2);
} // void mouseDragged()

//esportare i fotogrammi in immagini (vedi framerate)
void keyPressed () {
  if (key == 's' || key == 'S') 
    saveF = !saveF;
} // void keyPressed()
