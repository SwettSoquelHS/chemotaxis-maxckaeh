Bacteria[] myBacteria = new Bacteria[250];

//declare bacteria variables here   
void setup() {     
  size(400, 400);
  for (int i = 0; i < myBacteria.length; i++) {
  myBacteria[i] = new Bacteria(250,250);
  }

  //initialize bacteria variables here
}   
void draw() {   
  background(255);
  for (int i = 0; i < myBacteria.length; i++) {
    myBacteria[i].show();
  }
  for (int i = 0;  i < myBacteria.length; i++) {
    myBacteria[i].move();
  }

  //move and show the bacteria
}  
class Bacteria {   
  float x_pos, y_pos;

  Bacteria(int x, int y) {
    x_pos = x;
    y_pos = y;
  }
  
  void move() {
    if(x_pos > 400) {
      x_pos = 100;
    }
    if(y_pos > 400) {
      y_pos = 100;
    }
    x_pos = x_pos - ((int)(Math.random()*20)-10);
    y_pos = y_pos - ((int)(Math.random()*20)-10);
  }
  
  void show() {
    pushMatrix();
    translate(x_pos, y_pos);
    fill(int(random(255)), int(random(255)), int(random(255)));
    ellipse(0, 0, 30, 30);
    popMatrix();
    //lots of java!
  }
}
