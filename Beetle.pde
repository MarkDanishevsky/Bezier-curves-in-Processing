/*
18th of March, 2024
Ms. Krasteva
Bézier Function in Processing: VW Beetle Demonstration
By Mark Danishevsky
*/

void setup() {
  size(800, 500);
  draw();
}

void draw() {
  strokeWeight(3);

  fill(0); //Black
  beginShape(); //Used as a black curtain behind the rear wheel
  bezier(624, 336, 582, 242, 711, 213, 711, 330);
  endShape(CLOSE);
  
  beginShape(); //Used as a black curtain behind the front wheel
  bezier(407, 312, 407, 218, 559, 197, 517, 364);
  endShape(CLOSE);
  
  // Front Right Wheel
  fill(0); //Black
  ellipseMode(RADIUS);
  ellipse(410, 356, 57, 79); //Inwards face of wheel (facing the user)
  
  beginShape(); //Fill out space between two ellipses (front wheel)
  vertex(410, 435); //Bottom left
  vertex(453, 443); //Bottom right
  vertex(400, 350); //Top
  endShape();
  
  beginShape(); //Fill out space between two ellipses (rear wheel)
  vertex(648, 397); //Bottom left
  vertex(676, 397); //Bottom right
  vertex(662, 338); //Top
  endShape();
  
  fill(67, 70, 75); //Dark Gray
  ellipse(453, 364, 57, 79); //Outwards face of wheel
  
  fill(0); //Black
  ellipse(648, 338, 21, 59); // Inwards face of rear wheel

  fill(67, 70, 75); //Dark Gray
  ellipse(676, 338, 21, 59); // Outwards face of rear wheel

  // Front Left Wheel
  fill(0); //Black
  ellipse(154, 350, 57, 79); 
  fill(67, 70, 75); //Dark Gray
  ellipse(184, 350, 57, 79);

  // Front Right Wheel cap
  fill(199, 201, 210); //Silver
  beginShape();
  vertex(447, 328);
  bezierVertex(493, 337, 477, 401, 448, 401);
  bezierVertex(409, 402, 411, 338, 447, 328);
  endShape();

  // Front Right Wheel cap
  fill(199, 201, 210); //Silver
  beginShape();
  vertex(673, 311);
  bezierVertex(657, 315, 658, 362, 670, 365);
  bezierVertex(692, 348, 695, 330, 673, 311);
  endShape();
  
  fill(67, 70, 75); //Dark Gray
  beginShape(); //Sideskirt
  vertex(635, 343);
  vertex(644, 349);
  vertex(521, 373);
  vertex(520, 356);
  endShape(CLOSE);
  
  // General outline
  fill(204, 0, 0); //Red
  beginShape();
  vertex(91, 328);
  bezierVertex(107, 225, 168, 233, 189, 228); //Front Bumper
  bezierVertex(226, 199, 210, 199, 265, 190); //Top Hood
  line(265, 190, 300, 123);
  vertex(300, 123);
  bezierVertex(337, 89, 645, 23, 661, 230);
  bezierVertex(642, 248, 634, 292, 633, 341);
  vertex(522, 367);
  bezierVertex(495, 175, 420, 302, 424, 323);
  bezierVertex(346, 398, 146, 396, 91, 323);
  endShape();

  //Hood
  noFill();
  bezier(210, 335, 148, 342, 160, 195, 268, 190);
  bezier(210, 335, 312, 354, 303, 210, 486, 209);

  // Chrome bumper
  fill(192, 192, 192); //Silver
  beginShape();
  vertex(85, 348);
  bezierVertex(146, 366, 341, 367, 392, 358);
  bezierVertex(395, 337, 405, 340, 377, 337); //Right side of bumper
  bezierVertex(314, 339, 131, 340, 94, 329); //Top of bumper
  bezierVertex(94, 329, 79, 330, 85, 348); //Left side of bumper
  endShape();

  //Left headlight outline
  fill(192, 192, 192); //Silver
  beginShape();
  vertex(160, 280);
  bezierVertex(166, 244, 130, 240, 111, 276);
  bezierVertex(96, 321, 148, 324, 160, 280);
  endShape();

  //Right headlight outline
  fill(192, 192, 192); //Silver
  beginShape();
  vertex(325, 288);
  bezierVertex(332, 238, 398, 242, 382, 290);
  bezierVertex(374, 325, 332, 329, 325, 288);

  endShape();

  //Left headlight
  fill(255, 250, 250); //White
  beginShape();
  vertex(155, 280);
  bezierVertex(162, 262, 140, 233, 111, 276);
  bezierVertex(103, 317, 143, 311, 155, 280);
  endShape();

  //Right headlight
  fill(255, 250, 250); //White
  beginShape();
  vertex(327, 287);
  bezierVertex(328, 324, 370, 315, 376, 284);
  bezierVertex(379, 247, 340, 244, 327, 287);
  endShape();

  // Top of bumper
  fill(192, 192, 192); //Silver
  beginShape();
  line(85, 316, 86, 335);
  vertex(86, 335);
  bezierVertex(84, 310, 89, 301, 104, 307);
  bezierVertex(300, 314, 172, 314, 355, 311); //Top edge
  bezierVertex(367, 312, 380, 321, 377, 347);
  bezierVertex(371, 350, 376, 348, 370, 343);
  bezierVertex(373, 324, 360, 315, 352, 317);
  bezierVertex(195, 322, 292, 321, 95, 312); //Bottom edge
  bezierVertex(90, 309, 88, 320, 90, 332);
  bezierVertex(88, 338, 90, 335, 86, 335);
  endShape();

  //Front windshield
  fill(255, 250, 250); //White
  beginShape();
  vertex(280, 187);
  bezierVertex(316, 177, 410, 170, 472, 185);
  bezierVertex(497, 191, 488, 185, 497, 126);
  bezierVertex(500, 83, 320, 105, 315, 115);
  bezierVertex(303, 117, 287, 145, 274, 180);
  bezierVertex(276, 180, 271, 186, 280, 187);
  endShape();

  //Full outline of windows
  fill(255, 250, 250); //White
  beginShape();
  vertex(513, 135);
  bezierVertex(523, 118, 582, 118, 585, 128);
  vertex(585, 128);
  vertex(596, 196);
  bezierVertex(595, 204, 598, 200, 589, 204);
  vertex(520, 200);
  bezierVertex(498, 200, 503, 161, 513, 135);
  endShape();
  line(532, 198, 526, 128); //Windows division
  
  //Rear window
  beginShape();
  vertex(593, 125);
  bezierVertex(636, 131, 660, 211, 640, 205);
  vertex(607, 201);
  vertex(591, 128);
  bezierVertex(592, 124, 590, 126, 593, 125);
  endShape();
  
  //Rear Wheel arch
  fill(204, 0, 0); //Red
  beginShape();
  vertex(661, 230);
  bezierVertex(642, 248, 634, 292, 633, 341);
  bezierVertex(653, 354, 634, 352, 654, 348);
  bezierVertex(660, 262, 704, 221, 712, 330);
  bezierVertex(716, 257, 684, 233, 661, 230);
  endShape();

  bezier(605, 347, 609, 286, 618, 237, 597, 200); //Door panel gap (aft)
  bezier(505, 284, 502, 272, 510, 236, 501, 219); //Door panel gap (front)
  
  //Door handle
  fill(192, 192, 192); //Silver
  beginShape();
  vertex(591, 227);
  bezierVertex(608, 227, 595, 226, 605, 230);
  bezierVertex(620, 225, 612, 218, 590, 224);
  bezierVertex(588, 234, 589, 228, 591, 227);
  endShape();
  
  fill(192, 192, 192); //Center line
  beginShape();
  vertex(337, 179);
  bezierVertex(274, 189, 242, 225, 224, 281);
  bezierVertex(222, 284, 227, 288, 229, 282); //Bottom
  bezierVertex(245, 233, 272, 191, 343, 181);
  endShape(CLOSE);
  
  ellipse(521, 182, 11, 13);
  
  strokeWeight(3);
  fill(192, 192, 192); //Side mirror handle
  beginShape();
  vertex(507, 207);
  bezierVertex(517, 207, 512, 195, 520, 185);
  bezierVertex(510, 177, 526, 177, 516, 185);
  endShape(CLOSE);
  
  strokeWeight(1.5);
  fill(255, 250, 250); //White
  beginShape(); //Antena
  vertex(242, 195);
  vertex(250, 108);
  vertex(248, 108);
  vertex(239, 197);
  endShape();
}
