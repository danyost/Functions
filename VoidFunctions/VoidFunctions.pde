PImage jon;

int time;

void setup(){
  size(480, 480);
  
  jon = loadImage("jon.png");
  imageMode(CENTER);
}

void draw(){
  time++;
  
  randomCircle(time);
  randomSquare(time);
  randomJon(time); 
}

void randomCircle(int col){
  fill(col % 255, 0, 255 - (col % 255));
  ellipse(mouseX, mouseY, random(50, 100), random(50, 100));
}

void randomSquare(int col){
  fill(col % 255, 0, 255 - (col % 255));
  rect(random(width), random(height), random(width), random(height));
}

void randomJon(int col){
  tint(col % 255, 0, 255 - (col % 255));
  image(jon, random(width), random(height));
}