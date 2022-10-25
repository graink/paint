//variables to store colour
float r = 0;
float g = 0;
float b = 0;

//var to store pen size 
int penSize = 1;

//canvas set up
void setup(){
  size(800, 650);
  background(255);//white 
}

void draw(){
  stroke (r, g , b);
  strokeWeight(penSize);
  if (mousePressed&&mouseY<height-50){
    line(pmouseX,  pmouseY, mouseX, mouseY);  //pmouse = where mouse was  /  mouse = current position
    
  }

strokeWeight(3);
line(0,height-50,width,height-50);
stroke(0);
strokeWeight(1);
fill(255,0,0); //red
rect(0,height-50,50,50); //sqaure button
fill(0,255,0); //green
rect(50,height-50,50,50); //sqaure button
fill(0,0,255); //blue 
rect(100,height-50,50,50); //sqaure button
fill(255); //white
rect(150,height-50,50,50); //sqaure button
fill(0); //black
rect(200,height-50,50,50); //sqaure button
fill(255); //random
rect(250,height-50,50,50); //sqaure button
fill(0);
text("RANDOM", 253, height-25);

//to determine colour selected
if(mousePressed&&mouseX<50&&mouseY>height-50){
 r = 255; g = 0; b = 0; //red
 }
 
if(mousePressed&&mouseX>50&&mouseX<100&&mouseY>height-50){
 r = 0; g = 255; b = 0; //green
 }
 
if(mousePressed&&mouseX>100&&mouseX<150&&mouseY>height-50){
 r = 0; g = 0; b = 255; //blue
 }
 
 if(mousePressed&&mouseX>150&&mouseX<200&&mouseY>height-50){
 r = 255; g = 255; b = 255; //white
 }

if(mousePressed&&mouseX>200&&mouseX<250&&mouseY>height-50){
 r = 0; g = 0; b = 0; //black
 }
 
 if(mousePressed&&mouseX>250&&mouseX<300&&mouseY>height-50){
 r = random(255); g = random(255); b = random(255); //random number between 1-225
 }
 
 // buttons to change pen size 
 ellipse(350,height-25,50,50);
 ellipse(400,height-25,25,25);
 ellipse(430,height-25,8,8);
 ellipse(460,height-25,2,2);
 
 if(mousePressed&&mouseX>350-25&&mouseX<350+25&&mouseY>height-50){
 penSize=50;
 }
 
 if(mousePressed&&mouseX>400-25&&mouseX<400+25&&mouseY>height-50){
 penSize=25;
 }
 
 if(mousePressed&&mouseX>430-25&&mouseX<430+25&&mouseY>height-50){
 penSize=8;
 }
 
 if(mousePressed&&mouseX>460-25&&mouseX<460+25&&mouseY>height-50){
 penSize=2;
 }
 
 // save button 
fill(255);
rect(500,height-50,50,50);
fill(0);
text("SAVE", 510, height-25);
//if(mousePressed&&mouseX>500&&mouseX<550&&mouseY>height-50){
//saveFrame();  ---> saved more than one pic i.e. pics were saved per second
//}

//clear button
fill(100);
rect(550,height-50,250,50);
fill(0);
text("CLEAR",670, height-25);
}

void mousePressed(){
  if(mouseX>500&&mouseX<550&&mouseY>height-50){
    saveFrame();
}

if(mouseX>550&&mouseX<800&&mouseY>height-50){
  background(255); //clears background to white
} 

}
