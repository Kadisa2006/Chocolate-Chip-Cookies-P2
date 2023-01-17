//Rectangles
int Rec1Width, Rec1Height, Rec1X, Rec1Y;
int Rec2Width, Rec2Height, Rec2X, Rec2Y;
int Rec3Width, Rec3Height, Rec3X, Rec3Y;
//Population
float LineX1, LineX2, LineY1, LineY2;
float Line2X1, Line2X2, Line2Y1, Line2Y2;
//Rects
void rectangles(){
if(Nightmode==true){
fill(#837777);}
rect( Rec1X, Rec1Y, Rec1Width, Rec1Height);

if(Nightmode==true){
fill(#837777);
}
rect( Rec2Width, Rec2Height, Rec2X, Rec2Y );

//Lines
line(LineX1, 0, LineX1, appHeight);
line(LineX2, 0, LineX2, appHeight);
line(0, LineY1, appWidth, LineY1);
line(0, LineY2, appWidth, LineY2);
//Recs/
Rec1Width = appWidth*1/3;
Rec1Height = appHeight*1/3;
Rec1X = appWidth*1/3;
Rec1Y = appHeight*1/3;
//rect 2
Rec2Width=appWidth*2/3 ; 
Rec2Height=appHeight*1/3 ;
Rec2X=  appWidth*2/3;
Rec2Y= appHeight*1/3;

//lines
LineX1 = appWidth*1/3;
LineX2 = appWidth*2/3;
LineY1 = appHeight*1/3;
LineY2 = appHeight*2/3;
//
}
