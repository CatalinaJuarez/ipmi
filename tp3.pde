/*Catalina Constanza Juarez
 Comision 3
 tp 3
 junio 2026*/
// https://youtu.be/v092QgkTFT8

PImage imagen26;
int estado = 0;

void setup() {
  size(800, 400);
  imagen26 = loadImage("26.jpg");
  rectMode(CENTER);
}


void draw() {
  background(0);
  image(imagen26, 0, 0, 400, 400);

  if (estado == 0) {   // se hace la animacion segun el estado
    dibujarTunel(608, 205, 440);
  } else if (estado == 1) {
    dibujarTunel(608, 205, 440);
  } else if (estado == 2) {
    dibujarTunel(608, 205, 440);
  } else {
    dibujarCuadrantes();
  }
}

void dibujarTunel(float centroX, float centroY, float tamañoMaximo) {
  int cantidadCuadrados = 28;

  for (int nivel = cantidadCuadrados; nivel >= 1; nivel--) { //recorre de atras para adelante
    fill(obtenerColor(nivel));
    noStroke();

    float porcentaje = (float)(nivel - 1) / (cantidadCuadrados - 1);  //lugar de elementos en el tunel
    float curva = porcentaje * porcentaje * porcentaje;  //para que los primeros sean lineas mas gruesas que el resto

    float tamañoActual = map(curva, 0, 1, 0, tamañoMaximo);

    if (tamañoActual < 3) {
      tamañoActual = 3;
    }

    float posX = centroX - 125 * (1 - curva);  //hacen la parte de la perspectiva
    float posY =centroY - 70 * (1 - curva);

    for (int borde = 1; borde >= 0; borde--) {

      pushMatrix();

      translate(posX, posY);

      if (estado == 2) {

        rotate(
          radians(
          map(mouseX, 0, width, -40, 40) * (1 - porcentaje)
          )
          );
      }

      rect(0, 0, tamañoActual + borde, tamañoActual + borde);
      popMatrix();
    }
  }
}

void dibujarCuadrantes() {

  for (int a = 0; a < 2; a++) {
    for (int b = 0; b < 2; b++) {

      float x = map(a, 0, 2, 400, 800);
      float y = map(b, 0, 2, 0, 400);

      dibujarMiniTunel(x + 100, y + 100, 180);
    }
  }
}


void dibujarMiniTunel(float centroX, float centroY, float tamañoMaximo) {

  int cantidadCuadrados = 18;

  for (int nivel = cantidadCuadrados; nivel >= 1; nivel--) { //recorre de atras para adelante pero dibujo los mas grandes primero

    fill(obtenerColor(nivel));
    noStroke();

    float porcentaje = (float)(nivel - 1) / (cantidadCuadrados - 1);
    float curva = porcentaje * porcentaje * porcentaje;
    float tamañoActual = map(curva, 0, 1, 0, tamañoMaximo);

    if (tamañoActual < 3) {
      tamañoActual = 3;
    }

    float posX = centroX - 35 * (1 - curva);  //hacen la parte de perspectiva
    float posY = centroY - 20 * (1 - curva);

    pushMatrix();

    translate(posX, posY);
    rect(0, 0, tamañoActual, tamañoActual);

    popMatrix();
  }
}


void mousePressed() {

  if (estado < 3) {
    estado++;
  }
}


void keyPressed() {  //tocar r para reiniciar en cualquier momento

  if (key == 'r' || key == 'R') {
    estado = 0;
  }
}

color obtenerColor(int nivel) {

  if (nivel % 2 == 0) {

    if (estado >= 1) {
      return color(255, 190, 230);
    } else {
      return color(255);
    }
  } else {

    return color(0);
  }
}
