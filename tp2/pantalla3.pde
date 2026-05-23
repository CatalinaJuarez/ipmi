void pantalla3() {
  contador++;

  if (contador >= 60*10) {
    pantallaActual = 4;
    contador = 0;
  }

  movimientoPantalla3();
}

void movimientoPantalla3() {

  if (contador < 60) {
    animacionEntrada3();
  } else if (contador < 520) {
    animacionEspera3();
  } else {
    animacionSalida3();
  }
}

void animacionEntrada3() {

  float animacionTiempo = contador;

  float xBloqueLouis = map(animacionTiempo, 0, 60, 700, 0);
  float xBloqueNiall = map(animacionTiempo, 0, 60, -600, 0);

  dibujarPantalla3(xBloqueLouis, xBloqueNiall);
}

void animacionEspera3() {

  dibujarPantalla3(0, 0);
}

void animacionSalida3() {

  float animacionTiempo = map(contador, 520, 600, 0, 60);

  float xBloqueLouis = map(animacionTiempo, 0, 60, 0, 700);
  float xBloqueNiall = map(animacionTiempo, 0, 60, 0, -600);

  dibujarPantalla3(xBloqueLouis, xBloqueNiall);
}

void dibujarPantalla3(float xBloqueLouis, float xBloqueNiall) {

  //louis
  image(louisFondo, xBloqueLouis -30, -30, 600, 330);
  image(louis, xBloqueLouis + 490, 0, 130, 210);
  image(louisNombre, xBloqueLouis + 15, -25, 150, 150);
  textSize(12);
  text("Nació en 1991 en Reino Unido y se unió a la banda con 18 años.", xBloqueLouis + 185, 90, 270, 130);
  text("Fue muy importante en One Direction porque participó en la composición de muchas canciones. Actualmente tiene una carrera solista orientada al pop-rock e indie, con dos álbumes lanzados y giras mundiales exitosas.", xBloqueLouis + 110, 130, 360, 150);

  //niall
  image(niallFondo, xBloqueNiall + 70, 180, 600, 330);
  image(niall, xBloqueNiall + 30, 265, 85, 210);
  image(niallNombre, xBloqueNiall + 480, 175, 150, 150);
  textSize(12);
  text("Nació en 1993 en Irlanda y se unió a la banda con 16 años.", xBloqueNiall + 210, 305, 250, 130);
  text("Se destacó en One Direction por tocar la guitarra en vivo durante muchos conciertos. Actualmente tiene una carrera solista orientada al pop y folk, con tres álbumes lanzados y gran éxito internacional.", xBloqueNiall + 205, 350, 345, 150);
}
