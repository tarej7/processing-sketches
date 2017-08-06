PImage catPic;
int x1 = 367;
int x2 = 545;
int y1 = 319;
int y2 = 319;
int acceleration = 5;
void setup(){
  catPic = loadImage("catPic.jpg");
  catPic.resize(800,600);
  size(800, 600);
  background(catPic);
  
}
void draw(){
 if(mousePressed) {
    println("Mouse's x-position: " +mouseX + "\n Mouse's y-position: " + mouseY + "\n");
  }
  noStroke();
  fill(250, 0, 0);
  ellipse(x1, y1, 80, 80);
  fill (250, 0, 0);
  ellipse(x2, y2, 80, 80);
if( x1 > width){
  background(catPic);
  x1 = 367;
  x2 = 545;
  acceleration = 5;
}
if (x2 > width){
  background(catPic);
y1 = 319;
y2 = 319;
acceleration = 5;
}
}
void keyPressed(){
  x1+=2*acceleration;
  y1+=2*acceleration;
  x2+=2*acceleration;
  y2+=2*acceleration;
}