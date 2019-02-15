import processing.video.*;
//two global variables
float x;
float y;

//Variable to hold onto Capture object
Capture video;

void setup() {
  size(320,240);
  background(255);
  //start x and y in the center
  x = width/2;
  y = height/2;
  //Start the capture process
  video = new Capture(this, width, height);
  video.start();
}

void captureEvent(Capture video) {
  //Read image from the camera
  video.read();
}

void draw() {
  video.loadPixels();
  float newx = constrain(x + random(-20,20),0,width);
  float newy = constrain(y + random(-20,20),0,height);
  
  //Find the midpoint of the line
  int midx = int((newx + x) / 2);
  int midy = int((newy + y) / 2);
  //Pick the color from the video, reversing x
  color c = video.pixels[ (width-1-midx) + midy*video.width ];
  
  //Line from (x,y) to the (newx,newy)
  stroke(0);
  strokeWeight(4);
  line(x, y, newx, newy);
  
  x = newx;
  y = newy;
}
