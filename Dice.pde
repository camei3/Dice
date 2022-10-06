void setup() {
  size(800, 800);
  noLoop();
}

float dieRow = 8, dieSize, dieCol;

class Die {
  float posX, posY, roll; 
  Die(float x, float y) {
    posX = x;
    posY = y;
    roll = (int)(Math.random()*6)+1;
  } 
  void show() {
    stroke(20);
    strokeWeight(1);
    fill(255);
    rect(posX, posY, dieSize, dieSize);
    strokeWeight((width/((dieRow + 2) + (dieRow + 1)/2))/6);
    if (roll%2 == 1) {
      point(posX+dieSize/2, posY+dieSize/2);
    }
    if (roll > 1) {
      point(posX+dieSize*3/4, posY+dieSize*3/4);
      point(posX+dieSize/4, posY+dieSize/4);
    }
    if (roll > 3) {
      point(posX+dieSize/4, posY+dieSize*3/4);
      point(posX+dieSize*3/4, posY+dieSize/4);
    }
    if (roll == 6) {
      point(posX+dieSize/4, posY+dieSize/2);
      point(posX+dieSize*3/4, posY+dieSize/2);
    }
  }
}


Die instance;

void draw() {
  newBoard();
  int sum = 0;
  for (int y = 0; y < (int)dieCol; y++) {
    for (int x = 0; x < dieRow; x++) {
      instance = new Die((x+1)*dieSize*1.5, (y+1)*dieSize*1.5);
      instance.show();
      sum += instance.roll;
    }
  }

  strokeWeight(2);
  fill(255);
  rect(width/8, height*7/8, width*3/4, height*1/16);
  fill(0);
  textSize(40);
  textAlign(CENTER, CENTER);
  text(sum + " (" +  (int)dieRow + " x " + (int)dieCol + ")", width/2, height*14.4/16.0);
  if (dieRow > 1) {
    text('<', width/6, height*14.4/16.0);
  }
  if (dieRow < 32) {
    text('>', width*5/6, height*14.4/16.0);
  }
}

void mouseClicked() {
  if (dist(mouseX, mouseY, width/6, height*14.4/16.0) < 20 && dieRow > 1) {
    dieRow--;
  }
  if (dist(mouseX, mouseY, width*5/6, height*14.4/16.0) < 20 && dieRow < 32) {
    dieRow++;
  }  
  redraw();
}

void newBoard() {
  dieSize = (width/((dieRow + 2) + (dieRow + 1)/2));
  dieCol = (height * 14/16 - dieSize*1.5) / (dieSize * 1.5);

  stroke(180);
  fill(225, 205, 165);
  rect(16, 16, width-32, height-32);
}
