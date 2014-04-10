// DRAWING TRIANGLE TAIL
// Elisa Canini for the course SEI2014 @ UnirSM  
// github.com/ElisaCanini — github.com/SEI2014-UnirSM/Elisa-SEI2014-UnirSM
// Made for educational purposes, MIT License, March 2014, San Marino
// —

/*
 * DRAWING A LINE
 *
 * MOUSE
 * drag                : drawing
 * release             : nothing
 *
 */


PVector[] v = new PVector[4];
boolean isFirst = true;

void setup() {
  size(600,600);
  background(0);
  stroke(255);
  fill(255,100);
}


void draw() {
if (mousePressed) {
 if (isFirst) {
v[1] = new PVector(mouseX,mouseY);
v[2] = new PVector(mouseX+random(-30,30),mouseY+random(-30,30));
v[3] = new PVector(mouseX+random(-30,30),mouseY+random(-30,30));
beginShape();
vertex(v[1].x,v[1].y);
vertex(v[2].x,v[2].y);
vertex(v[3].x,v[3].y);
endShape();
isFirst=false;
  } else {
   float[] distance = {0,0,0,0};
   v[0] = new PVector(mouseX,mouseY);
   distance[1] = v[0].dist(v[1]);
   if (distance[1] > 20) {
    distance[2] = v[0].dist(v[2]);
    distance[3] = v[0].dist(v[3]);
    int quale=1;
    for (int i = 2; i<=3; i++) {
      if (distance[i] > distance[quale]) {
      quale = i;   
      }
    }
    //println(quale);
    v[quale]=v[0].get();
    beginShape();
    vertex(v[1].x,v[1].y);
    vertex(v[2].x,v[2].y);
    vertex(v[3].x,v[3].y);
    endShape();   
   }   
  }
}

}

void keyPressed() {
 if(key == 'd' || key == 'D') { isFirst=true; background(0);}
}
