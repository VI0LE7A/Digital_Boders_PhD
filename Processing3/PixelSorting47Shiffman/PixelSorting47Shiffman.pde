// Daniel Shiffman
// http://codingtra.in
// http://patreon.com/codingtrain
// Code for: https://youtu.be/JUDYkxU6J0o

PImage img;
PImage sorted;
int index = 0;

void setup() {
  //la imagen utilizada es 1275x955 el tama;o es el doble para mostrar original y nueva version y mismo height
  size(2550, 955);

  img = loadImage("LowRes.png");
  sorted = createImage(img.width, img.height, RGB);
  sorted = img.get();
}

void draw() {
  println(frameRate);

  sorted.loadPixels();

  // Selection sort!
  for (int n = 0; n < 10; n++) {
    float record = -1;
    int selectedPixel = index;
    for (int j = index; j < sorted.pixels.length; j++) {
      color pix = sorted.pixels[j];
      // hue es lo que acomoda segun color si cambia a brightness u otro el acomodo sorting es diferente
      float b = hue(pix);
      if (b > record) {
        selectedPixel = j;
        record = b;
      }
    }

    // Swap selectedPixel with i
    color temp = sorted.pixels[index];
    sorted.pixels[index] = sorted.pixels[selectedPixel];
    sorted.pixels[selectedPixel] = temp;

    if (index < sorted.pixels.length -1) {
      index++;
    }
  }
 

  sorted.updatePixels();

  background(0);
  image(img, 0, 0);
  // sorted es la primer imagen y el primer numero es segunda imagen so el x de la imagen o ancho ej. 1275x955
  image(sorted, 1275, 0);
  //Si se presiona cualquier tecla tab enter o space se guarda imagen si se deja presionada continua guardando
  if (keyPressed == true)
 //save image los gatos guardan el numero de 0 ej. primera imagen Meme0001.png etc. en Sketch Folder
  saveFrame("Meme####.png");
  
}