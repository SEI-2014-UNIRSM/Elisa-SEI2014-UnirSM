// BRUSH OF STARS
// Elisa Canini for the course SEI2014 @ UnirSM
// github.com/ElisaCanini — github.com/SEI2014-UnirSM/Elisa-SEI2014-UnirSM
// Made for educational purposes, MIT License, March 2014, San Marino
// —

ArrayList <star> Planetario;

void setup() {
  size (600, 600);
  colorMode(HSB, 360, 100, 100);

  Planetario = new ArrayList();

  frameRate(24);
}

void draw() {
  background (340, 100, 100);

  for (int n=0; n<Planetario.size(); n++) {
    star S = Planetario.get(n);
    S.display();

    if (S.eta > 24*5) {
      Planetario.remove(n);
    }
  }

  /*float L = map(mouseY, 0, height, 0, 60);
  float H = map(mouseX, 0, width, 0, 100);*/

  star nuova = new star(mouseX, mouseY, random(5, 12), color(360, 0, 100, 100));
  //aggiungi al planetario
  Planetario.add(nuova);
}

void mouseMoved() {
  //crea una stella nel punto cliccato


  /*float L = map(mouseY, 0, height, 0, 60);
  float H = map(mouseX, 0, width, 0, 100);*/

  star nuova = new star(mouseX, mouseY, random(5, 12), color(360, 0, 100, 80));
  //aggiungi al planetario
  Planetario.add(nuova);
}
