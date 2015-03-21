PFont f;


void setup(){
 size(1280,800);
 f = loadFont("./data/SansSerif-48.vlw");
 textFont(f);
 textSize(24);
  
}

void draw(){
 float value = (frameCount )/30.0;  // something to drive the meter
 drawMeter(value); 
}

void drawMeter(float val){
  float centerX,centerY;
  float dialRadius = 400;
  centerX = width/2;
  centerY = height-300;

  background(0);
   
  strokeWeight(2);stroke(#FFFFFF);
  for (int t = 0;t<=180; t++){
  float scaleAngle = map(t,0,180,-PI,0);
  pushMatrix();
  translate(centerX,centerY);
  rotate(scaleAngle);
  if(t % 10 == 0){
    line(dialRadius-24,0,dialRadius,0);
  }
  else if(t % 5 == 0){
    line(dialRadius-16,0,dialRadius,0);
  }
  else if(true){
    line(dialRadius-8,0,dialRadius,0);
  }
  popMatrix();
  }
   
   // draw numbers:
   fill(#ffffff);
   for(int t=0;t<=180;t++){
     if(t % 10 == 0){
       float scaleAngle = map(t,0,180,-PI,0);
       pushMatrix();
       translate(centerX,centerY);
       rotate(scaleAngle);
       // adjust h0 for textwidth, angle:
       translate(dialRadius+20,0);
       rotate(HALF_PI);
       translate(-textWidth(str(t))/2,0);
       text(str(t),0,0); 
       popMatrix();
     }
   }
   
   // draw the needle:
   float ptrAngle;
   ptrAngle = map(sin(val),-1,1,-PI+1,-1);
   strokeWeight(2);
   stroke(#FFFFFF);
   pushMatrix();
   translate(centerX,centerY);
   rotate(ptrAngle);
   line(0,0,dialRadius,0);
   strokeWeight(12);
   point(0,0);
   popMatrix();
}
