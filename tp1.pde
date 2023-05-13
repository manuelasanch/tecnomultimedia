

//MANUELA SÁNCHEZ
//TP1

PImage imagen1, imagen2, imagen3;
int pantallaActual = 1;
int tiempoPantalla = 5000; 
int tiempoInicio;

boolean iniciarPresentacion = false;
boolean reiniciarPresentacion = false;

void setup() {
  size(640, 480);
  textAlign(CENTER, CENTER);
  textSize(24);
  
  imagen1 = loadImage("imagen1.jpg");
  imagen2 = loadImage("imagen2.jpg");
  imagen3 = loadImage("imagen3.jpg");
  
  iniciarPresentacion = true;
}

void draw() {
  background(0);
  

  if (iniciarPresentacion) {
    tiempoInicio = millis();
    iniciarPresentacion = false;
  }
  
  if (millis() - tiempoInicio < tiempoPantalla) {
    pantallaActual = 1;
  } else if (millis() - tiempoInicio < tiempoPantalla * 2) {
    pantallaActual = 2;
  } else if (millis() - tiempoInicio < tiempoPantalla * 3) {
    pantallaActual = 3;
  } else {

    reiniciarPresentacion = true;
  }
  

  if (pantallaActual == 1) {
    image(imagen1, 0, 0, width, height);
    float alpha = map(millis() - tiempoInicio, 0, tiempoPantalla, 0, 255);
    fill(255, alpha);
    text("OBRA DE ARTE ELECTRONICO", width / 2, height / 2);
  } else if (pantallaActual == 2) {
    image(imagen2, 0, 0, width, height);
   float x = map(millis() - tiempoInicio, tiempoPantalla, tiempoPantalla * 2, width / 2, -width / 2);

    fill(255);
    text("El arte electrónico es el conjunto de actividades artísticas en las que se utilizan medios electrónicos o tecnologías digitales", width / 4 + x, height / 4);
  } else if (pantallaActual == 3) {
    image(imagen3, 0, 0, width, height);
    float y = map(millis() - tiempoInicio, tiempoPantalla * 2, tiempoPantalla * 3, -height / 2, height / 2);
    fill(255);
    text("los materiales utilizados se dan en un flujo de electricidad", width / 2, height / 2 + y);
    
    
    fill(0, 200);
    rect(width / 2 - 100, height / 2 + 50, 200, 50);
    fill(255);
    text("Reiniciar", width / 2, height / 2 + 75);
  }
  
  
}
void mousePressed() {
  if (pantallaActual == 3 && mouseX > width / 2 - 100 && mouseX < width / 2 + 100 && mouseY > height / 2 + 50) {
    iniciarPresentacion = true;
  }
}
