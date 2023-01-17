int TextX1, TextTY1 , TextX2, TextTY2;
int reset = 255;
//text
void Text_Phases() {
TextX1=appWidth*13/30; 
TextTY1 =appHeight*15/30;
//
TextX2=appWidth*23/30;
TextTY2=appHeight*15/30;
//text type
textSize(23);
fill(150, 75, 0);
text("Start(Click on the screen)", TextX1/1.25, TextTY2 );
fill(reset);
//

textSize(23);
fill(150, 75, 0);
text("Reset(Right click)", TextX2/1.05, TextTY2 );
fill(reset);

//phase2
if (Phase2 == true) {
textSize(15);
fill(150, 75, 0);
text("Welcome To Cookie Talk", appWidth/15, appHeight/10);
fill(reset);

textSize(15);
fill(150, 75, 0);
text("Press V to continue", appWidth/11.5, appHeight/7.5 );
fill(reset);


textSize(15);
fill(150, 75, 0);
text("Press N for Nightmode", appWidth/11.5, appHeight/6);
fill(reset);

textSize(15);
fill(150, 75, 0);
text("Press D for Daymode", appWidth/11.5, appHeight/5 );
fill(reset);


textSize(15);
fill(150, 75, 0);
text("Press ESC to quit.", appWidth/11.5, appHeight/4.3);
fill(reset);
}
//Phase3
if(Phase3==true){
textSize(15);
fill(0, 0, 0);
fill(reset);

textSize(15);
fill(0, 0, 0);
text("The Creator of the CHOC CHIP COOKIE", appWidth/50, appHeight/1.2);
fill(reset);

textSize(15);
fill(150, 75, 0);
text("Press C to continue", appWidth/50, appHeight/1.05);
fill(reset);
}
//Phase4
if(Phase4==true){
textSize(15);
fill(0, 0, 0);
text("Stop staring at your cookie jar", appWidth/2.9, appHeight/25);
fill(reset);

textSize(15);
fill(150, 75, 0);
text("Press B to continue", appWidth/2.9, appHeight/5);
fill(reset);
}
//Phase5
if(Phase5==true){
textSize(15);
fill(0, 0, 0);
text("The INTERNET COOKIE, i resent thee", appWidth/3, appHeight/1.3);
fill(reset);

textSize(15);
fill(150, 75, 0);
text("Press Y to continue", appWidth/3, appHeight/1.1);
fill(reset);
}
if(Phase6==true){
textSize(15);
fill(255, 255, 255);
text("Creator of the internet cookie", appWidth/1.49, appHeight/1.45);
text("He made me accept Terms & Conditions", appWidth/1.49, appHeight/1.4);
fill(reset);

textSize(15);
fill(150, 75, 0);
text("Press H  to continue", appWidth/1.49, appHeight/1.1);
fill(reset);
};

if(Phase7==true){
textSize(15);
fill(255, 255, 255);
text("So Choc Chip Cookie or Internet cookie", appWidth/1.49, appHeight/50);
text("Which one do you like more?", appWidth/1.49, appHeight/20);
fill(reset);
};

if(start==true){
textSize(15);
fill(0, 0, 0);
text("Have a Cookie", appWidth/10, appHeight/2);
fill(reset);
}
  if(appWidth<appHeight){
textSize(40);
fill(0, 0, 0);
text("TURN THE PHONE", appWidth/3, appHeight/3);
fill(reset);
}
}
