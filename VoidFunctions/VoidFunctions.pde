PImage jon;

int time;

void setup(){
  size(480, 480);
  
  jon = loadImage("jon.png");
  imageMode(CENTER);
}

void draw(){
  time++;
  
  randomJon(time); 
}

void randomJon(int col){
  tint(col % 255, col % 255, 255 - (col % 255));
  image(jon, random(width), random(height));
}