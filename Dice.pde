void setup()
{
	noLoop();
}
void draw()
{
	//your code here
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	//variable declarations here
	
	Die(int x, int y) //constructor
	{
		//variable initializations here
	}
	void roll()
	{
		//your code here
	}
	void show()
	{
		//your code here
	}
}


class Die {
  float posX, posY;
  Die(float x, float y) {
    posX = x;
    posY = y;
  }   
  
  void show() {
    rect(posX,posY,10,10);
  }  
  
}

void setup() {
  size(800,800);
}

int tileSize = 60;

void draw() {
  background(225,200,150);
  
  //table
  fill(215,190,140);
  stroke(115,90,40);
  strokeWeight(2);
  
  translate(tileSize,tileSize);
  for (int tables = 0; tables < 2; tables++) {
    
    for (int col = 0; col < 3; col++) {
      for (int row = 0; row < 3; row++) {
        rect(row*tileSize,col*tileSize,tileSize,tileSize);
      }
    }
    translate(0,tileSize*4.5);
    
  }
}
