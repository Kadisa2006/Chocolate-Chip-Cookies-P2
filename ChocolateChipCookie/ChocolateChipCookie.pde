import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
Minim minim; //creates object to access all functions
AudioPlayer song1; //creates "Play List" variable holding extensions WAV, AIFF, AU, SND, and MP3
int appWidth, appHeight, largerDimension, smallerDimension;
Boolean start=false, Phase2=false, Phase3=false, Phase4=false, Phase5=false, Phase6=false, Phase7=false;
Boolean Daymode = false, Nightmode = false;
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
PImage img,img2,img3,img4,img5, img6;

//

//
void setup() {
  size(930,620);
  //fullScreen(); //displayWidth, displayHeight
  //Display Algorithm from Hello World
  appWidth = width;
  appHeight = height;
  display();
  largerDimension = 0; //From Display Algorithm
  smallerDimension = 0; //From Display Algorithm

  minim = new Minim(this); //load from data directory, loadFile should also load from project folder, like loadImage
  song1 = minim.loadFile("../FreeWare Music/MusicDownload/groove.mp3"); //able to pass absolute path, file name & extension, and URL

}//End setup
//
void draw() {
  if(start == true){
    img = loadImage("../Images/Peanut-Butter-Chocolate-Chip-Cookies-1.jpg");
  image(img, 0,207,appWidth/3, appHeight/3);
  text("Welcome To Cookie Show",appWidth/2, appHeight/2);
  }
Modes();
Phase3();
Phase4();
Phase5();
Phase6();
Phase7();
if(start==false){
 println("Hey,Read the Instructions.");
background(134, 144, 315);
}
 rectangles();
 Text_Phases();
 
};

//End draw
void mousePressed() {
{
 Phase2();
if(mouseX==appWidth*1/3 && mouseY==appHeight*1/3 && start==false);
println("Welcome");
start=true;
if (mouseButton==RIGHT){
start=false;
println("System reset");
};
} //End mousePressed
// 
}
void keyPressed() {
  //Key Board Short Cuts
  //First Play Button
  //if ( key=='P' || key=='p' ) song1.play(); //Parameter is milli-seconds from start of audio file to start playing
  //
  //PLAY PAUSE STOP Feature
  if ( key=='P' || key=='p' ) {
    if ( song1.isPlaying() ) {
      song1.pause();
    } else if ( song1.position() >= song1.length()-song1.length()*1/5 ) {
      song1.rewind();
      song1.play();
    } else {
      song1.play(); //Parameter is milli-seconds from start of audio file to start playing
    }
  }//End PLAY PAUSE Feature
  //
  //Second Play Button, Loop ONCE
  if ( key=='L' || key=='l'  ) song1.loop(1); //Parameter is Parameter is number of repeats
  //Infinite Loop
  if ( key=='I' || key=='i' ) song1.loop(); //Parameter is empty, means infinite looping (could be -1)
  //
  if ( key=='M' || key=='m' ) { //MUTE Button
    //Note: Mute has NO built-in pause button and NO built-in rewind if the song is near the end of the file
    //Note: this MUTE algorithm is not smart
    //Known ERROR: once song plays, MUTE acts like it doesn't work
    if ( song1.isMuted() ) { 
      song1.unmute();
    } else { 
      song1.mute();
    }
  } //End MUTE Button
  //
  //Fast Forward & Fast Reverse
  //Built in Question, .isPlaying(), not necessary
  if ( key == 'F' || key == 'f' ) song1.skip( 1000 ); // skip forward 1 second (1000 milliseconds)
  if ( key == 'R' || key == 'r' ) song1.skip( -1000 ); // skip backwards 1 second, notice negative, (1000 milliseconds)
  //
  //STOP Button
  if ( key == 'S' || key == 's' ) {
    if ( song1.isPlaying() ) {
      song1.pause();
      song1.rewind(); //Cue SONG to play from beginning
    } else {
      song1.rewind(); //Not playing means song is paused or song position is at the end of the file
    }
  }

}//End keypressed
//
//End MAIN Program
