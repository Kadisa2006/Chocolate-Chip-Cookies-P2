void Phase3 () {
if (key=='P'||key=='p') {
Phase3=true;
}
if (mouseButton == RIGHT){
Phase3=false;
}
if(Phase2==false){
Phase3=false;
};
if(Phase3==true){
img2=loadImage("../Images/00overlooked-images-two-slide-GI87-videoSixteenByNineJumbo1600.jpg");
image(img2,0,207,appWidth/3, appHeight/3);
//text in Riechcommoskirat text
}
}
