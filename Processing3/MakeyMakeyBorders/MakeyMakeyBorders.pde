import processing.video.*;
Movie myMovie;
import processing.sound.*;
SoundFile file;

void setup() 
{//the open of setup
  fullScreen();//size();
  //NOT SURE IF GOES HERE OR DOWN myMovie = new Movie(this, "kittib.mov");
  //SAME DOWN OR HERE myMovie.loop();
} //the close of setup

void draw() 
{//the open of draw
  if(key == CODED) //**might need to change or add only when key is pressed**//
  { //keyCoide uses variables up down left and right as well as alt control and shift
   if (keyCode == UP) 
     { myMovie = new Movie(this, "kittib.mov"); //Aqu;i debo cambiar a play video 1 
       myMovie.loop(); //si loop va arriba aqui va image(myMovie, 0, 0);
       file = new SoundFile(this, "sample.wav");//SOUND 
       file.loop();
     }
     else if (keyCode == DOWN) 
        { rect(30, 20, 55, 55);//aqui debo reproducir otro video de down
        }
   else //del Key CODED principal o sea mientras no se presione nada
   { //reproducir video streaming normal
   }
  }
}//the close of draw