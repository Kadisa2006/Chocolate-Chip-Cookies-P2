float backgroundX, backgroundY, backgroundWidth, backgroundHeight;
float quitX, quitY, quitWidth, quitHeight;
float quitButtonImageRectX, quitButtonImageRectY, quitButtonImageRectWidth, quitButtonImageRectHeight;
float rectI, rectII, rectIII, rectIV;
float rectIX, rectIY, rectIWidth, rectIHeight;
float rectIIX, rectIIY, rectIIWidth, rectIIHeight;
float rectIIIX, rectIIIY, rectIIIWidth, rectIIIHeight;
float rectIVX, rectIVY, rectIVWidth, rectIVHeight;
float rectVX, rectVY, rectVWidth, rectVHeight;
float rectVIX, rectVIY, rectVIWidth, rectVIHeight;
float rectVIIX, rectVIIY, rectVIIWidth, rectVIIHeight;
float rectVIIIX, rectVIIIY, rectVIIIWidth, rectVIIIHeight;
float rectIXX, rectIXY, rectIXWidth, rectIXHeight;

int tintDayMode=255, tintDayModeOpacity=50;
//Blue might change, starts at zero
int tintRed=64, tintGreen=64, tintBlue=0, tintNightModeOpacity=85;
//
void homeScreen() { //Exists in VOID DRAW
  println("Arrived at Home Screen"); //Testing for Splash Screen Start Button working
  /* Home Screen Expectations
   - Background image using tint()
   - 9 evenly spaced rectangles, Assignment #3
   - Quit Button and Reset Button (Splash Screen Start Button)
   - In each: image, text, 2D Shape, Button
   - Narartive through the 9 rectangels
   - See Case Study
   - Note: must have one image with aspect ratio
   */
//
//Quit Button, move to Button Subprogram
  if ( mouseX>=quitX && mouseX<=quitX+quitWidth && mouseY>=quitY && mouseY<=quitY+quitHeight ) {
    /*
    fill(white); //Testing Only
    rect( quitX, quitY, quitWidth, quitHeight ); //Testing Only
    noFill(); //Testing Only
    */
    noStroke();
    fill(white);
    rect( quitButtonImageRectX, quitButtonImageRectY, quitButtonImageRectWidth, quitButtonImageRectHeight );
    noFill();
    stroke(1); //reset dedault
    imageTintNightMode();
    quitButtonImage(); //In Aspect Ratio
  } else { 
    noStroke();
    fill(white);
    rect( quitX, quitY, quitWidth, quitHeight );
    noFill();
    stroke(1); //reset dedault
    quitButtonText();
  }
  //rect( quitX, quitY, quitWidth, quitHeight );
  //
}//End homeScreen
//
void backgroundWhiteScreen() {
  fill(white);
  noStroke();
  rect( backgroundX, backgroundY, backgroundWidth, backgroundHeight ); //white colour
  stroke(1); //Reset: 1 pixel
  fill(white); //Reset: white
}//End backgroundWhiteScreen
//
void backgroundImage() {
  backgroundWhiteScreen();
  imageTintNightMode();
  image(backgroundImage, backgroundX, backgroundY, backgroundWidth, backgroundHeight);
  //image with tint()
}//End backgroundImage

void NineBoxes() {
  stroke(Black);
  noFill();
  image(StartImage, rectIX, rectIY, rectIWidth, rectIHeight);
  rect(rectIIX, rectIIY, rectIIWidth, rectIIHeight);
  rect(rectIIIX, rectIIIY, rectIIIWidth, rectIIIHeight);
  rect(rectIVX, rectIVY, rectIVWidth, rectIVHeight);
  rect(rectVX, rectVY, rectVWidth, rectVHeight);
  rect(rectVIX, rectVIY, rectVIWidth, rectVIHeight);
  rect(rectVIIX, rectVIIY, rectVIIWidth, rectVIIHeight);
  rect(rectVIIIX, rectVIIIY, rectVIIIWidth, rectVIIIHeight);
  rect(rectIXX, rectIXY, rectIXWidth, rectIXHeight);
}
//
//End Home Screen Subprogram
