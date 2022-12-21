void population() {
  float centerX=appWidth*1/2, centerY=appHeight*1/2;
  startWidth = appWidth*1/2;
  startHeight = appHeight*1/10;
  startX = centerX - startWidth*1/2;
  startY = centerY - startHeight*1/2;
  //
  backgroundX = appWidth * 0;
  backgroundY = appHeight * 0;
  backgroundWidth = appWidth;
  backgroundHeight = appHeight;
  //
  quitWidth = appWidth * 1/9; //Origonal 1/3, debugging to adjust
  quitHeight = appHeight * 1/10;
  quitX = centerX - quitWidth * 1/2;
  quitY = centerY - quitHeight * 5;
  //
  quitButtonImageRectX = quitX;
  quitButtonImageRectY = quitY;
  quitButtonImageRectWidth = quitWidth * 5/6; //Origonal needs debugging to adjust
  quitButtonImageRectHeight = quitHeight;
  //
  rectIX = appWidth * 0; 
  rectIY  = appHeight * 0;
  rectIWidth  = appWidth * 1/3; 
  rectIHeight  = appHeight * 1/3;
  //
  rectIIX  = appWidth * 1/3;
  rectIIY = appHeight * 0;
  rectIIWidth  = appWidth * 1/3; 
  rectIIHeight = appHeight * 1/3;
  //
  rectIIIX  = appWidth * 2/3;
  rectIIIY = appHeight * 0;
  rectIIIWidth  = appWidth * 1/3; 
  rectIIIHeight = appHeight * 1/3;
  //
  rectIVX  = appWidth * 0;
  rectIVY  = appHeight * 1/3;
  rectIVWidth  = appWidth * 1/3;
  rectIVHeight = appHeight * 1/3;
  //
  rectVX = appWidth * 1/3;
  rectVY = appHeight * 1/3;
  rectVWidth = appWidth * 1/3;
  rectVHeight = appHeight * 1/3;
  //
  rectVIX  = appWidth * 2/3;
  rectVIY = appHeight * 1/3;
  rectVIWidth = appWidth * 1/3;
  rectVIHeight = appHeight * 1/3;
  //
  rectVIIX  = appWidth * 0; 
  rectVIIY  = appHeight * 2/3;
  rectVIIWidth  = appWidth * 1/3; 
  rectVIIHeight = appHeight * 1/3;
  //
  rectVIIIX  = appWidth * 1/3; 
  rectVIIIY = appHeight * 2/3;
  rectVIIIWidth = appWidth * 1/3; 
  rectVIIIHeight = appHeight * 1/3;
  //
  rectIXX  = appWidth * 2/3; 
  rectIXY = appHeight * 2/3;
  rectIXWidth  = appWidth * 1/3; 
  rectIXHeight = appHeight * 1/3;
  
  rect();
}//End Population
//
//ENd Population Subprogram
