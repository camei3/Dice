float dieSize = 55;

class Die {
 float posX, posY, roll; 
 Die(float x, float y) {
   posX = x;
   posY = y;
   roll = (int)(Math.random()*6)+1;
 } 
 void show() {
   strokeWeight(1);
   fill(255);
   rect(posX,posY,dieSize,dieSize);
   strokeWeight(8);
   if (roll%2 == 1) {
     point(posX+dieSize/2,posY+dieSize/2);
   }
   if (roll > 1) {
     point(posX+dieSize*3/4,posY+dieSize*3/4);
     point(posX+dieSize/4,posY+dieSize/4);     
   }
   if (roll > 3) {
     point(posX+dieSize/4,posY+dieSize*3/4);
     point(posX+dieSize*3/4,posY+dieSize/4);  
   }
   if (roll == 6) {
     point(posX+dieSize/4,posY+dieSize/2);
     point(posX+dieSize*3/4,posY+dieSize/2);  
   }
 }
}

void setup() {
  size(800,800);
  noLoop();
}

Die instance;

void draw() {
  int sum = 0;
  for (int y = 0; y < 7; y++) {
    for (int x = 0; x < 8; x++) {
      instance = new Die((x+1)*dieSize*1.5,(y+1)*dieSize*1.5);
      instance.show();
      sum += instance.roll;
    }  
  
  
  }
  
  strokeWeight(2);
  fill(255);
  rect(width/8,height*7/8,width*3/4,height*1/16);
  fill(0);
  textSize(40);
  textAlign(CENTER);
  text(sum,width/2,height*59/64.0);
}

void mouseClicked() {
  redraw();
}
