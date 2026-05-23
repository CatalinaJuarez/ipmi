void pantalla6() {
  contador++;
  if (contador >= 60*10) {
    pantallaActual = 7;
    contador = 0;
  }

  movimientoPantalla6();
}

void movimientoPantalla6() {
  if (contador < 60) {
    animacionEntrada6();
  } else if (contador < 520) {
    animacionEspera6();
  } else {
    animacionSalida6();
  }
}

void animacionEntrada6() {

  float animacionTiempo = contador;

  float xFondo = map(animacionTiempo, 0, 60, 700, 20);
  float xTexto1 = map(animacionTiempo, 0, 60, 700, 240);
  float xTexto2 = map(animacionTiempo, 0, 60, 700, 140);
  float yImg1 = map(animacionTiempo, 0, 60, 500, -30);
  float yImg2 = map(animacionTiempo, 0, 60, 600, 270);

  dibujarPantalla6(xFondo, xTexto1, xTexto2, yImg1, yImg2);
}

void animacionEspera6() {

  dibujarPantalla6(20, 240, 140, -30, 270);
}

void animacionSalida6() {

  float animacionTiempo = map(contador, 520, 600, 0, 60);

  float xFondo = map(animacionTiempo, 0, 60, 20, 700);
  float xTexto1 = map(animacionTiempo, 0, 60, 240, 700);
  float xTexto2 = map(animacionTiempo, 0, 60, 140, 700);
  float yImg1 = map(animacionTiempo, 0, 60, -30, 600);
  float yImg2 = map(animacionTiempo, 0, 60, 270, -250);

  dibujarPantalla6(xFondo, xTexto1, xTexto2, yImg1, yImg2);
}

void dibujarPantalla6(float xFondo, float xTexto1, float xTexto2, float yImg1, float yImg2) {

  image(fondoTexto, xFondo, 30, 600, 390);
  fill(0);
  textSize(14);
  text("En marzo de 2015, Zayn decidió abandonar el grupo en plena gira.", xTexto1, 130, 310, 120);
  text("Los otros cuatro integrantes continuaron juntos y lanzaron su último disco. Sin embargo, a principios de 2016 anunciaron que se tomarían un descanso temporal para enfocarse en sus proyectos personales. Aunque en ese momento dijeron que sería solo por 18 meses, ya pasaron 10 años y todavía no hubo un reencuentro oficial de la banda.", xTexto2, 195, 375, 225);
  image(final1, -20, yImg1, 230, 230);
  image(final2, 425, yImg2, 230, 240);
}
