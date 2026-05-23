void pantalla0() {

  contador++;
  if (contador >= 120) {
    contador = 120;
  }

  image(logo, 170, 115, 300, 250);
  fill(0);
  textSize(16);
  float yTexto = map(contador, 0, 120, 500, 380);
  text("Fue una boyband británico-irlandesa formada en 2010 en Londres a partir del programa The X Factor.", 70, yTexto, 500, 400);

  //boton dibujo
  push();
  rectMode(CENTER);
  fill(0, 0, 0, 200);
  rect(320, 50, 140, 50);
  fill(255);
  textSize(30);
  textAlign(CENTER, CENTER);
  text("PLAY", 320, 50);
  pop();

  if (haciendoFade) {
    fill(255, 255-opacidad);
    rect(0, 0, width, height);
    opacidad -= 5;
    if (opacidad <= 0) {
      pantallaActual = 1;
      contador = 0;
      opacidad = 255;
      haciendoFade = false;
    }
  }
}
