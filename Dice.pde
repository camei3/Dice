class Die {
  float posX, posY;
  Die(float x, float y) {
    posX = x;
    posY = y;
  }   
  
  void show() {
    stroke(0);
    strokeWeight(3);
    fill(235,210,160);
    rect(posX,posY,50,50);
  }  
  
}

void setup() {
  size(800,800);
}

int tileSize = 90;
int colOS = 20;
void draw() {
  background(225,200,150);
  
  //table
  fill(215,190,140);
  stroke(115,90,40);
  strokeWeight(2);
  
  translate(tileSize/4,tileSize/4);
  for (int tables = 0; tables < 2; tables++) {
    
    for (int col = 0; col < 3; col++) {
      for (int row = 0; row < 3; row++) {
        rect(row*tileSize+colOS*row,col*tileSize,tileSize,tileSize);
      }
    }
    translate(0,tileSize*4.5);
    
  }
  resetMatrix();
}

void mousePressed() {
  Die rolled = new Die(width*7/8,height/2);
}
