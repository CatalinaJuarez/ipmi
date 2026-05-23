void pantalla2() {
  contador++;
  if (contador >= 480) {
    pantallaActual = 3;
    contador = 0;
  }

  movimientoPantalla2();
}

void movimientoPantalla2() {
  if (contador < 60) {
    animacionEntrada2();
  } else if (contador < 420) {
    animacionEspera2();
  } else {
    animacionSalida2();
  }
}

void animacionEntrada2() {

  float animacionTiempo = contador;
  float yFondo = map(animacionTiempo, 0, 60, -500, -30);
  float yHarry = map(animacionTiempo, 0, 60, 500, 55);
  float yNombre = map(animacionTiempo, 0, 60, -200, -20);
  float xTexto1 = map(animacionTiempo, 0, 60, 700, 180);
  float xTexto2 = map(animacionTiempo, 0, 60, -700, 100);

  dibujarPantalla2(yFondo, yHarry, yNombre, xTexto1, xTexto2);
}

void animacionEspera2() {

  dibujarPantalla2(-30, 55, -20, 180, 100);
}

void animacionSalida2() {

  float animacionTiempo = map(contador, 420, 480, 0, 60);
  float yFondo = map(animacionTiempo, 0, 60, -30, -500);
  float yHarry = map(animacionTiempo, 0, 60, 55, 500);
  float yNombre = map(animacionTiempo, 0, 60, -20, -200);
  float xTexto1 = map(animacionTiempo, 0, 60, 180, 700);
  float xTexto2 = map(animacionTiempo, 0, 60, 100, -700);

  dibujarPantalla2(yFondo, yHarry, yNombre, xTexto1, xTexto2);
}

void dibujarPantalla2(float yFondo, float yHarry, float yNombre, float xTexto1, float xTexto2) {
  image(harryFondo, -40, yFondo, 600, 490);
  fill(0);
  textSize(14);
  text("Nació en 1994 en Reino Unido y se unió a la banda con solo 16 años.", xTexto1, 145, 240, 120);
  text("Por su carisma en el escenario, los medios y fans lo consideraban el líder del grupo. Hoy tiene una carrera exitosa como solista con cuatro discos lanzados y varios premios Grammy.", xTexto2, 205, 350, 240);
  image(harry, 390, yHarry, 290, 425);
  image(harryNombre, 10, yNombre, 200, 200);
}
