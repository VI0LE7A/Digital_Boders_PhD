//PImage img;
//int smallPoint, largePoint;

//void setup() {
//  size(479, 434);
//  img = loadImage("wallBOB.jpg");
//  smallPoint = 4;
//  largePoint = 40;
//  imageMode(CENTER);
//  noStroke();
//  background(0);
//}

//void draw() { 
//  float pointillize = map(mouseX, 0, width, smallPoint, largePoint);
//  int x = int(random(img.width));
//  int y = int(random(img.height));
//  color pix = img.get(x, y);
//  fill(pix, 128);
//  ellipse(x, y, pointillize, pointillize);
//}



PImage img;
int pointillize = 10;

void setup() {
  size(500,500);
  //size(2048, 1365);
  img = loadImage("Cuevana2.png");
  background(255);
  smooth();
}

void draw() {
  // Pick a random point
  int x = int(random(img.width));
  int y = int(random(img.height));
  int loc = x + y*img.width;
  
  // Look up the RGB color in the source image
  loadPixels();
  float r = red(img.pixels[loc]);
  float g = green(img.pixels[loc]);
  float b = blue(img.pixels[loc]);
  noStroke();
  
  // Draw an ellipse at that location with that color
  fill(r,g,b,100);
  ellipse(x,y,pointillize,pointillize);
}
