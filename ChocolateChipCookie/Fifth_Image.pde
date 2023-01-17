void Phase5(){
if(key=='B'||key=='b'){
Phase5=true;
  };
if(mouseButton==RIGHT){
Phase5=false;
  };
if(start==false){
Phase5=false;
  };
if(Phase3==false){
Phase5=false;
  };
if(Phase4==false){
Phase5=false;
  };
if(Phase5==true){
img4=loadImage("../Images/intro-cookies-768x717.png");
image(img4,312,414,appWidth/3,appHeight/3);
  };
};//text in Box text
