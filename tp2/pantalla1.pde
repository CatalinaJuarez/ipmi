void pantalla1() {
  contador++;

  if (contador >= 60*10) {
    pantallaActual = 2;
    contador = 0;
  }
  movimientoPantalla1();
}

void movimientoPantalla1() {
  if (contador < 60) {
    animacionEntrada();
  } else if (contador < 520) {
    animacionEspera();
  } else {
    animacionSalida();
  }
}

void animacionEntrada() {

  float animacionTiempo = contador;

  float xHoja = map(animacionTiempo, 0, 60, 700, 20);
  float xFoto = map(animacionTiempo, 0, 60, -300, 370);
  float yTexto1 = map(animacionTiempo, 0, 60, -200, 125);
  float yTexto2 = map(animacionTiempo, 0, 60, 700, 185);

  dibujarPantalla(xHoja, xFoto, yTexto1, yTexto2);
}

void animacionEspera() {

  float xHoja = 20;
  float xFoto = 370;
  float yTexto1 = 125;
  float yTexto2 = 185;

  dibujarPantalla(xHoja, xFoto, yTexto1, yTexto2);
}

void animacionSalida() {

  float animacionTiempo = map(contador, 520, 600, 0, 60);

  float xHoja = map(animacionTiempo, 0, 60, 20, -700);
  float xFoto = map(animacionTiempo, 0, 60, 370, 1000);
  float yTexto1 = map(animacionTiempo, 0, 60, 125, -300);
  float yTexto2 = map(animacionTiempo, 0, 60, 185, 700);

  dibujarPantalla(xHoja, xFoto, yTexto1, yTexto2);
}

void dibujarPantalla(float xHoja, float xFoto, float yTexto1, float yTexto2) {
  image(fondoTexto, xHoja, 30, 600, 390);
  fill(0);
  textSize(14);
  text("En el programa los chicos participaron como solistas y fueron eliminados.", 240, yTexto1, 310, 120);
  text(" Pero los jueces decidieron unirlos para que compitieran como grupo. Quedaron en el tercer puesto pero ganaron muchísimas fans. Gracias a eso, Simon Cowell les ofreció un contrato discográfico y así comenzó la banda. DATO CURIOSO: el grupo fue formado en menos de 10 minutos.", 140, yTexto2, 370, 240);
  image(oneDirectionX, xFoto, 290, 260, 190);
}
