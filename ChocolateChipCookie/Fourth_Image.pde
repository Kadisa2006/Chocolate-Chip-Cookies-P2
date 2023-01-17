void Phase4(){
if(key=='C'||key=='c'){
Phase4=true;
};

if(mouseButton==RIGHT){
Phase4=false;
};
if(start==false){
Phase4=false;
};
if(Phase3==false){
Phase4=false;
};
if(Phase4==true){
img3=loadImage("../Images/offset_1026022.jpg");
image(img3,310,0,appWidth/3, appHeight/3);
}
};

//text in Box text
