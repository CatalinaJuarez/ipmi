/*Catalina Constanza Juarez
   Comision 3
   tp 1
   abril 2026*/

PImage miImagen;

void setup(){
  size(800, 400);
  miImagen = loadImage("mural.jpg");
}

void draw(){
  background(225, 245, 250); 
  image(miImagen, 0, 0, 400, 400);
  
  //pelo
  push();
  stroke(140, 190, 200);
  strokeWeight(60);
  line(745, 175, 798, 90);
  pop();
  
  //cara
  fill(250, 230, 210);
  ellipse(670, 220, 140, 150);
  
  //ojos
  fill(255);
  ellipse(639, 196, 45, 25);
  ellipse(700, 196, 45, 25);
  
  //pupilas
  fill(200, 210, 245);
  ellipse(626, 196, 19, 17);
  fill(225, 235, 255);
  ellipse(687, 196, 19, 17);
  
  //nariz
  line(669, 235, 669, 210);
  line(669, 235, 688, 235);

  //labios
  fill(250, 230, 210);
  ellipse(671, 260, 40, 15);
  line(651, 261, 691, 259);
  
  //pelo
  push(); 
  stroke(140, 190, 200);
  strokeWeight(30);
  line(660, 141, 684, 0);
  pop();
  
  //pelo
  push();  
  stroke(128, 0, 64);
  strokeWeight(10);
  line(621, 159, 600, 0);
  pop();
  
  //pelo
  push();  
  stroke(185, 235, 255);
  strokeWeight(15);
  line(694, 143, 766, 0);
  pop();
 
  //pelo
  push();  
  stroke(290, 210, 200);
  strokeWeight(15);
  line(740, 235, 895, 80);
  pop();
  
  //lineas negras pelo
  line(628, 158, 612, 0);
  line(676, 145, 701, 0);
  line(638, 153, 645, 0);
  line(682, 147, 741, 0);
  line(723, 170, 815, 0);
  line(739, 210, 880, 0);
  line(738, 246, 790, 210);
  
  //espirales de abajo
  fill(185, 235, 255);
  ellipse(650, 335, 50, 50);
  ellipse(650, 335, 30, 30);
  fill(140, 190, 200);
  ellipse(650, 335, 15, 15);
  ellipse(650, 335, 5, 5);
  
  //espirales de abajo
  fill(140, 190, 200);
  ellipse(591, 331, 70, 70);
  ellipse(591, 331, 50, 50);
  fill(185, 235, 255);
  ellipse(591, 331, 30, 30);
  ellipse(591, 331, 10, 10);
  
  //espirales de abajo
  fill(185, 235, 255);
  ellipse(602, 293, 35, 35);
  fill(140, 190, 200);
  ellipse(602, 293, 15, 15);
  
  //espirales de abajo
  fill(185, 235, 255);
  ellipse(564, 278, 55, 55);
  ellipse(564, 278, 35, 35);
  fill(140, 190, 200);
  ellipse(564, 278, 15, 15);
  
   //espirales de abajo
  fill(140, 190, 200);
  ellipse(632, 296, 35, 35);
  fill(185, 235, 255);
  ellipse(632, 296, 15, 15);
  
  //espiral
  fill(255);
  ellipse(450, 179, 20, 10);
  ellipse(430, 175, 20, 10);
  ellipse(410, 173, 10, 5);
  
  //espiral
  fill(255);
  ellipse(470, 155, 35, 20);
  ellipse(445, 150, 20, 10);
  ellipse(430, 150, 10, 5);
  
  //espiral
  fill(255);
  ellipse(496, 95, 10, 20);
  ellipse(496, 115, 15, 25);
  ellipse(496, 75, 10, 10);
  
  //espiral
  fill(255, 224, 192);
  ellipse(529, 110, 15, 25);
  fill(255);
  ellipse(529, 85, 10, 20);
  
  //flor
  fill(255, 224, 192);
  ellipse(490, 185, 70, 50);
  ellipse(496, 143, 35, 35);
  ellipse(529, 162, 50, 80);
  fill(140, 190, 200);
  ellipse(496, 143, 15, 15);
  
  //flor rosa
  fill(290, 210, 200);
  ellipse(532, 370, 40, 20);
  ellipse(490, 370, 40, 20);
  ellipse(510, 350, 20, 40);
  ellipse(510, 390, 20, 40);
  fill(255);
  ellipse(510, 372, 20, 20);
  
  //flor bordo
  fill(128, 0, 64);
  ellipse(747, 370, 30, 10);
  ellipse(715, 370, 30, 10);
  ellipse(730, 360, 10, 30);
  ellipse(730, 380, 10, 30);
  ellipse(730, 369, 10, 10);
  
}
  
