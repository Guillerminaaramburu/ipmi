PImage limon;

void setup() {
  size(800, 400);
  limon = loadImage ("limon.png");
}
 
void draw () {
  background(255);
  image(limon, 0, 0,400,400);
  fill (255,255,0);
  noStroke ();
  circle (615, 210, 230);
  fill (255,255,0);
  noStroke ();
  triangle (525,340,530,260,595,310);
  stroke (100,180,60);
  strokeWeight (4);
  line (665,110,675,95);
  stroke (50,115,20);
  strokeWeight (2);
  line (673,103,680,110);
  beginShape();
  fill (32,85,10);
  noStroke ();
  vertex(680,110);
  bezierVertex(680,110,750,110,740,200);
  bezierVertex(740,200,680,200,680,110);
  endShape();
}
void mouseClicked (){
  println (mouseX, mouseY);
}
