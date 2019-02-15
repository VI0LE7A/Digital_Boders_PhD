/**
 * Loop. 
 * 
 * Shows how to load and play a QuickTime movie file.  
 *
 */

import processing.video.*;

Movie movie;

void setup() {
  size(640, 360);
  background(0);
  // Load and play the video in a loop
  //movie = new Movie(this, "dave.mp4");
  movie = new Movie(this, "kittib.mp4");
  movie.loop();
}

void draw() {
  if (movie.available() == true) {
    movie.read(); 
  }
  //Escribe de arriba hacia abajo ergo si el de abajo es mas grande tapa los de arriba sobreescribe
  noTint(); //aplica usar color original o mejor no usar color
  image(movie, 0, 0, width, height); //tama;o video completo x1 en cero, y1 en cero, x2 el ancho, y2 el largo
  //TINT VERDE - IMAGEN ESQUINA superior IZQUIERDA
  tint(0,255,0); //aplica el color a los de abajo si es el ultimo a todos videos de abajo en RGB    
  image(movie, 0, 0, width/2, height/2); //divides the video by half in esquina izquierda arriba x,y,x/2,y/2
  //TINT ROJO - iMAGEN ESQUINA inferior DERECHA
  tint(255,0,0);
  image(movie, width/2, height/2, width/2, height/2); //esquina derecha abajo
  //TINT AZUL - IMAGEN ESQUINA superior DERECHA
  tint(0,0,255);
  image(movie, width/2, 0, width/2, height/2);
  
}