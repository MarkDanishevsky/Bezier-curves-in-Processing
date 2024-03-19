/*
18th of March, 2024
Ms. Krasteva
Bézier Function in Processing: Dove CopyCat Activity
By Mark Danishevsky
*/

void setup(){
  size(800,500);
  background(135,206,235);
}

void draw(){
  fill(255,255,255);
  beginShape();
  vertex(200,250);
  bezierVertex(250,190,285,182,
345,225);
  bezierVertex(355,150,475,133,595,153);
  vertex(505,245);
  bezierVertex(555,215,615,255,660,225);
  bezierVertex(393,589,279,231,200,250);
  endShape();
}

