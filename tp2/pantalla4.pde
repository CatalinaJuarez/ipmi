void pantalla4() {
  contador++;
  if (contador >= 60*10) {
    pantallaActual = 5;
    contador = 0;
  }

  movimientoPantalla4();
}

void movimientoPantalla4() {
  if (contador < 60) {
    animacionEntrada4();
  } else if (contador < 520) {
    animacionEspera4();
  } else {
    animacionSalida4();
  }
}

void animacionEntrada4() {

  float animacionTiempo = contador;
  float xBloqueLiam = map(animacionTiempo, 0, 60, -600, 0);
  float xBloqueZayn = map(animacionTiempo, 0, 60, 700, 0);

  dibujarPantalla4(xBloqueLiam, xBloqueZayn);
}

void animacionEspera4() {
  dibujarPantalla4(0, 0);
}

void animacionSalida4() {
  float animacionTiempo = map(contador, 520, 600, 0, 60);
  float xBloqueLiam = map(animacionTiempo, 0, 60, 0, -600);
  float xBloqueZayn = map(animacionTiempo, 0, 60, 0, 700);

  dibujarPantalla4(xBloqueLiam, xBloqueZayn);
}

void dibujarPantalla4(float xBloqueLiam, float xBloqueZayn) {

  //liam
  image(liamFondo, xBloqueLiam -30, -30, 600, 330);
  image(liam, xBloqueLiam + 490, 0, 130, 210);
  image(liamNombre, xBloqueLiam + 15, -25, 150, 150);
  textSize(12);
  text("Nació en 1993 en Reino Unido y se unió a la banda con 16 años.", xBloqueLiam + 185, 90, 270, 130);
  text("Fue uno de los integrantes más importantes en los comienzos de One Direction por su voz y experiencia musical. En su etapa como solista, se orientó al pop y urbano, colaborando con distintos artistas reconocidos.", xBloqueLiam + 110, 125, 350, 155);

  //zayn
  image(zaynFondo, xBloqueZayn + 70, 180, 600, 330);
  image(zayn, xBloqueZayn + 30, 265, 120, 210);
  image(zaynNombre, xBloqueZayn + 480, 180, 150, 150);
  textSize(12);
  text("Nació en 1993 en Reino Unido y se unió a la banda con 17 años.", xBloqueZayn + 210, 310, 250, 130);
  text("Fue muy reconocido en One Direction por su estilo vocal. Actualmente tiene una carrera solista orientada al R&B y pop, con cinco álbumes lanzados y una música más personal.", xBloqueZayn + 205, 350, 345, 150);
}
