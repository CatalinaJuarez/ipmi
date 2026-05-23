void pantalla7() {
  contador++;

  if (contador > 60) {
    contador = 60;
  }

  float yBoton = map(contador, 0, 60, -100, 240);
  push();

  rectMode(CENTER);

  // boton
  fill(0, 0, 0, 200);
  rect(320, yBoton, 220, 70);

  // texto
  fill(255);
  textSize(38);
  textAlign(CENTER, CENTER);
  text("RESET", 320, yBoton);

  pop();
}
