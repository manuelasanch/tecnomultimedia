//Manuela Sánchez, 80845/2
//Tecnología
// Comisión 3

PImage img;
void setup() {
  size(800, 400);
  img= loadImage("data/retrato2.jpg");
}
void draw() {
  background(255, 255, 255);
  noFill();
  rect(0, 0, 400, 800);
  rect(400, 0, 400, 400);
  fill(0, 0, 0);
  ellipse(200, 180, 250, 250);//pelo circulo arriba
  fill(0);
  rect(75, 190, 250, 150);//pelo cuadrado abajo
  fill(92, 78, 78);
  ellipse(200, 450, 140, 140);//ropa
  fill(237, 179, 143);
  rect(175, 300, 50, 100);//cuello
  fill(244, 208, 187);
  ellipse(200, 200, 200, 247);//cara
  fill(222, 175, 141);
  ellipse(150, 150, 50, 50);//párpado ojo izquierdo
  fill(222, 175, 141);
  ellipse(250, 150, 50, 50);//párpado ojo derecho
  fill(255, 255, 255);
  stroke(0);
  ellipse(150, 164, 50, 25);//ojo izquierdo
  fill(255, 255, 255);
  ellipse(250, 164, 50, 25);//ojo derecho
  fill(20, 102, 129);
  noStroke();
  ellipse(150, 164, 25, 25);//color ojo izquierdo
  fill(20, 102, 129);
  noStroke();
  ellipse(250, 164, 25, 25);//color ojo derecho
  fill(0);
  ellipse(150, 164, 16, 16);//ojo izquierdo pupila
  fill(0);
  ellipse(250, 164, 16, 16);//ojo derecho pupila
  fill(255);
  ellipse(154, 160, 13, 13);//brillo ojo 1
  fill(255);
  ellipse(254, 160, 13, 13);//brillo ojo 2
  fill(243, 163, 163);
  ellipse(125, 200, 65, 25);//rosado cachete izquierdo
  fill(243, 163, 163);
  ellipse(275, 200, 65, 25);//rosado cachete derecho
  fill(232, 64, 64);
  ellipse(195, 243, 18, 18);//parte arriba labio (izquierdo)
  fill(232, 64, 64);
  ellipse(206, 243, 18, 18);//parte arriba labio (derecho)
  fill(232, 64, 64);
  ellipse(200, 258, 30, 19);//parte abajo labio
  image(img, 400, 0);
}
