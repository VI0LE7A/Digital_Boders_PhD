import ddf.minim.*;
 
Minim minim;
AudioPlayer song;
PImage img;
 
void setup()
{
  size(1800, 450);
 //SOUND
  minim = new Minim(this);
 
  // this loads mysong.wav from the data folder
  song = minim.loadFile("soltaste.mp3");
  song = minim.loadFile("soltaste2.mp3");
  song.play();
  //END OF SOUND
  img = loadImage("banner.jpg");
}
 
void draw()
{
  //THE SAME IN ONE LINE background(img);
  image(img, 0, 0);
  
  
  
  
  //DRAW A WAVEFORM
  stroke(255);
  // we draw the waveform by connecting neighbor values with a line
  // we multiply each of the values by 50 
  // because the values in the buffers are normalized
  // this means that they have values between -1 and 1. 
  // If we don't scale them up our waveform 
  // will look more or less like a straight line.
  for(int i = 0; i < song.bufferSize() - 1; i++)
  {
    line(i, 50 + song.left.get(i)*50, i+1, 50 + song.left.get(i+1)*50);
    line(i, 150 + song.right.get(i)*50, i+1, 150 + song.right.get(i+1)*50);
    }
    //END OF DRAW WAVEFORM
   stroke(0);  
   for(int i = 0; i < song.bufferSize() - 1; i++)
  {
    line(i, 50 + song.left.get(i)*50, i+10, 50 + song.left.get(i+1)*50);
    line(i, 150 + song.right.get(i)*50, i+10, 150 + song.right.get(i+1)*50);
    }
   for(int i = 0; i < song.bufferSize() - 1; i++)
   bezier(i+120, 150 + song.left.get(i)*120, i+120, 150 + song.left.get(i+1)*120, i+10, 50 + song.left.get(i)*50, i+10, 50 + song.left.get(i+1)*50);
   
}