PImage jon;

int time;

void setup(){
  size(480, 480);
  
  jon = loadImage("jon.png");
  imageMode(CENTER);
}

void draw(){
  time = randomJon(time); 
}

int randomJon(int col){
  col++;
  
  tint(col % 255, 0, 255 - (col % 255));
  
  image(jon, random(width), random(height));
  
  return col;
}