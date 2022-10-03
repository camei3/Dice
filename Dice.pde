float size = 55;

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
   rect(posX,posY,size,size);
   strokeWeight(8);
   if (roll%2 == 1) {
     point(posX+size/2,posY+size/2);
   }
   if (roll > 1) {
     point(posX+size*3/4,posY+size*3/4);
     point(posX+size/4,posY+size/4);     
   }
   if (roll > 3) {
     point(posX+size/4,posY+size*3/4);
     point(posX+size*3/4,posY+size/4);  
   }
   if (roll == 6) {
     point(posX+size/4,posY+size/2);
     point(posX+size*3/4,posY+size/2);  
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
      instance = new Die((x+1)*size*1.5,(y+1)*size*1.5);
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
