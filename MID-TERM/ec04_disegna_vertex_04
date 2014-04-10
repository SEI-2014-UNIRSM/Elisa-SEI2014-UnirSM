// DRAWING TRIANGLE TAIL
// Elisa Canini for the course SEI2014 @ UnirSM  
// github.com/ElisaCanini — github.com/SEI2014-UnirSM/Elisa-SEI2014-UnirSM
// Made for educational purposes, MIT License, April 2014, San Marino
// —

/*
 * DRAWING A TAIL OF TRIANGLES
 *
 * MOUSE
 * drag                : drawing
 * release             : nothing
 *
 * KEYS
 * p                   : save PDF
 *
 */


// pdf library
import processing.pdf.*;

boolean savePDF= false;

float x = 0, y = 0;
float stepSize = 5.0;
// fare un array triangoli per definire le dimensioni
// per unire i vertici aggiungere un vertex ?

void setup() {
  size (1280, 720);
  background (0);
  colorMode (HSB, 360, 100, 100, 100);
  x = mouseX;
  y = mouseY;
}

void draw () {
  if (mousePressed) {
    float d = dist(x, y, mouseX, mouseY); // definisce la dimensione scalare

    if (d > stepSize) { 

      pushMatrix();
      noStroke ();
      fill (200, 50, 100, 70);
      beginShape ();
      vertex (mouseX, mouseY);
      vertex (pmouseX, pmouseY);
      vertex (mouseX+random(10), mouseY-random(10));
      endShape (CLOSE);

      beginShape ();
      vertex (mouseX, mouseY);
      vertex (pmouseX, pmouseY);
      vertex (mouseX-random(10), mouseY+random(10));
      endShape (CLOSE);
      popMatrix();

      if (savePDF) {
        endRecord();
        savePDF = false;
      }
    }
  }
}

void mousePressed() {
  x = mouseX;
  y = mouseY;
}

void keyPressed() {
  if (key=='p' || key=='P') savePDF = true;

  if (key == DELETE || key == BACKSPACE) {
    background(0);
  }
}
