PImage backgroundImage, quitButtonImage, StartImage, Slide3, Slide4, Slide5, Slide6, Slide7, Slide8, Slide9;
//
void imageSetup() {//Image Population
  backgroundImage=loadImage("../Images/Pumpkin-Cream-Cheese-Cookie-Sandwiches-2.jpg");
  StartImage=loadImage("../Images/st,small,507x507-pad,600x600,f8f8f8.jpg");
  Slide3=loadImage("../Images/k_Edit_2022-08-Brown-Butter-Chocolate-Chip-Cookies_Brown_Butter_Chocolate_Chip_Cookies-3.jpg");
  Slide4=loadImage("../Images/00overlooked-images-two-slide-GI87-videoSixteenByNineJumbo1600.jpg");
  Slide5=loadImage("../Images/1C5A8967.jpg");
  Slide6=loadImage("../Images/offset_1026022.jpg");
  Slide7=loadImage("../Images/intro-cookies-768x717.jpg");
  Slide8=loadImage("../Images/IMG_1046-e1619208088200.jpg");
  Slide9=loadImage("../Images/Computer-Cookies-848x480-1.jpg");
  //quitButtonImage is loaded here if different
}//End imageSetup
//
void imageTintNightMode() {
  //Control night mode, colour, with IF 
  //if (nightMode==true) tint(tintRed, tintGreen, tintBlue, tintNightModeOpacity);
  //if (nightMode==false) tint(tintDayMode, tintDayModeOpacity);
  if ( nightMode==true ) {
    tint(tintRed, tintGreen, tintBlue, tintNightModeOpacity);
  } else {
    tint(tintDayMode, tintDayModeOpacity);
  }
}//End imageTintNightMode
//
void quitButtonImage() {
  quitButtonImage = backgroundImage;
  //
  //Image Dimensions
  float quitButtonImageWidth=1707, quitButtonImageHeight=2560;
  //rect( quitButtonImageRectX, quitButtonImageRectY, quitButtonImageRectWidth, quitButtonImageRectHeight );
  //Following vars must be populated or debugger error
  float quitButtonImageWidth_Adjusted=0.0, quitButtonImageHeight_Adjusted=0.0;
  float quitButtonImageWidth_Calculated=0.0, quitButtonImageHeight_Calculated=0.0;
  float largerDimension=0.0, smallerDimension=0.0;
  float imageWidthRatio=0.0, imageHeightRatio=0.0; 
  //
  if ( quitButtonImageWidth >= quitButtonImageHeight ) {//Image's largest dimension, Landscape or Square
    largerDimension = quitButtonImageWidth;
    smallerDimension = quitButtonImageHeight;
    //
    //Image's matching dimension to rectangle's matching dimension
    quitButtonImageWidth_Adjusted = quitButtonImageRectWidth;
    imageHeightRatio = smallerDimension / largerDimension; //value<1, main point of algorithm
    quitButtonImageHeight_Calculated = imageHeightRatio * quitButtonImageRectWidth;
    //
    //Debugging: x-value must be centered
    float centerX=appWidth*1/2;
    quitButtonImageRectX = centerX - quitButtonImageWidth_Adjusted * 1/2;
    imageTintNightMode();
    image( quitButtonImage, quitButtonImageRectX, quitButtonImageRectY, quitButtonImageWidth_Adjusted, quitButtonImageHeight_Calculated );
    //
  } else {//Portrait
    largerDimension = quitButtonImageHeight;
    smallerDimension = quitButtonImageWidth;
    //
    //Image's matching dimension to rectangle's matching dimension
    quitButtonImageHeight_Adjusted = quitButtonImageRectHeight;
    imageWidthRatio = smallerDimension / largerDimension; //value<1, main point of algorithm
    quitButtonImageWidth_Calculated = imageWidthRatio * quitButtonImageRectHeight;
    //
    //Debugging: x-value must be centered
    float centerX=appWidth*1/2;
    quitButtonImageRectX = centerX - quitButtonImageWidth_Calculated * 1/2;
    imageTintNightMode();
    image( quitButtonImage, quitButtonImageRectX, quitButtonImageRectY, quitButtonImageWidth_Calculated, quitButtonImageHeight_Adjusted );
    //
  }
}//End quitButtonImage
//
//End Image Subprogram
