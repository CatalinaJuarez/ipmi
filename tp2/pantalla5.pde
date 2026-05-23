void pantalla5() {
  contador++;
  if (contador >= 60*10) {
    pantallaActual = 6;
    contador = 0;
  }

  movimientoPantalla5();
}

void movimientoPantalla5() {
  if (contador < 60) {
    animacionEntrada5();
  } else if (contador < 520) {
    animacionEspera5();
  } else {
    animacionSalida5();
  }
}

void animacionEntrada5() {

  float animacionTiempo = contador;
  float yFondo = map(animacionTiempo, 0, 60, 500, 30);
  float xTexto1 = map(animacionTiempo, 0, 60, -700, 240);
  float xTexto2 = map(animacionTiempo, 0, 60, 700, 140);

  float xAlbum1 = map(animacionTiempo, 0, 60, -400, 85);
  float xAlbum2 = map(animacionTiempo, 0, 60, -400, 25);
  float xAlbum3 = map(animacionTiempo, 0, 60, 900, 425);
  float xAlbum4 = map(animacionTiempo, 0, 60, 900, 520);
  float xAlbum5 = map(animacionTiempo, 0, 60, 900, 515);

  dibujarPantalla5(yFondo, xTexto1, xTexto2, xAlbum1, xAlbum2, xAlbum3, xAlbum4, xAlbum5);
}

void animacionEspera5() {

  dibujarPantalla5(30, 240, 140, 85, 25, 425, 520, 515);
}

void animacionSalida5() {

  float animacionTiempo = map(contador, 520, 600, 0, 60);
  float yFondo = map(animacionTiempo, 0, 60, 30, 500);
  float xTexto1 = map(animacionTiempo, 0, 60, 240, -700);
  float xTexto2 = map(animacionTiempo, 0, 60, 140, 700);

  float xAlbum1 = map(animacionTiempo, 0, 60, 85, -400);
  float xAlbum2 = map(animacionTiempo, 0, 60, 25, -400);
  float xAlbum3 = map(animacionTiempo, 0, 60, 425, 900);
  float xAlbum4 = map(animacionTiempo, 0, 60, 520, 900);
  float xAlbum5 = map(animacionTiempo, 0, 60, 515, 900);

  dibujarPantalla5(yFondo, xTexto1, xTexto2, xAlbum1, xAlbum2, xAlbum3, xAlbum4, xAlbum5);
}

void dibujarPantalla5(float yFondo, float xTexto1, float xTexto2, float xAlbum1, float xAlbum2, float xAlbum3, float xAlbum4, float xAlbum5) {

  image(fondoTexto, 20, yFondo, 600, 390);
  fill(0);
  textSize(14);
  text("Entre 2011 y 2015, la banda lanzó cinco álbumes de estudio, prácticamente uno por año.", xTexto1, 135, 310, 120);
  text("Este ritmo de trabajo los llevó a realizar cuatro giras mundiales masivas y vender millones de entradas. One Direction se convirtió en una de las bandas más exitosas de la década, logrando grandes ventas y discos que debutaron en los primeros puestos de las listas internacionales.", xTexto2, 195, 380, 240);
  image(album1, xAlbum1, 10, 110, 110);
  image(album2, xAlbum2, 80, 110, 110);
  image(album3, xAlbum3, 350, 110, 110);
  image(album4, xAlbum4, 265, 110, 110);
  image(album5, xAlbum5, 360, 110, 110);
}
