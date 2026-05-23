/*Catalina Constanza Juarez
 Comision 3
 tp 2
 mayo 2026*/

PImage miImagen;
PImage logo;
PImage harry; PImage harryFondo; PImage harryNombre;
PImage niall; PImage niallFondo; PImage niallNombre;
PImage zayn; PImage zaynFondo; PImage zaynNombre;
PImage louis; PImage louisFondo; PImage louisNombre;
PImage liam; PImage liamFondo; PImage liamNombre;
PImage oneDirectionX;
PImage final1; PImage final2;
PImage album1; PImage album2; PImage album3; PImage album4; PImage album5;
PImage fondoTexto;
PFont miTipografia;
int pantallaActual = 0;  //pantallaActual/ estado
int contador = 0; boolean haciendoFade = false; float opacidad = 255; float x1 = 0; float x2; float velocidad = 1;

void setup() {
  size(640, 480);
  miImagen = loadImage("fondo.jpg");
  x2 = 640;
  textSize(60);
  miTipografia = loadFont("CourierNewPS-BoldMT-25.vlw");
  textFont(miTipografia);
  logo = loadImage("1D.png");
  harry = loadImage("harry.png");
  harryFondo = loadImage("harryFondo.png");
  harryNombre = loadImage("harryNombre2.png");
  niall = loadImage("niall.png");
  niallFondo = loadImage("niallFondo.png");
  niallNombre = loadImage("niallNombre.png");
  zayn = loadImage("zayn.png");
  zaynFondo = loadImage("zaynFondo.png");
  zaynNombre = loadImage("zaynNombre.png");
  louis = loadImage("louis.png");
  louisFondo = loadImage("louisFondo.png");
  louisNombre = loadImage("louisNombre.png");
  liam = loadImage("liam.png");
  liamFondo = loadImage("liamFondo.png");
  liamNombre = loadImage("liamNombre.png");
  oneDirectionX = loadImage("onedirectionX.png");
  fondoTexto =loadImage("fondoTexto.png");
  album1 = loadImage("album1.jpeg");
  album2 = loadImage("album2.jpeg");
  album3 = loadImage("album 3.jpeg");
  album4 = loadImage("album4.jpeg");
  album5 = loadImage("album5.jpeg");
  final1 = loadImage("final1.png");
  final2 = loadImage("final2.png");
}

void draw() {
  image(miImagen, x1, 0, 640, 480);
  image(miImagen, x2, 0, 640, 480);
  x1 -= velocidad;
  x2 -= velocidad;
  if (x1 <= -640) {
    x1 = 640;
  }
  if (x2 <= -640) {
    x2 = 640;
  }

  if (pantallaActual == 0) {
    pantalla0();
  } else if (pantallaActual == 1) {
    pantalla1();
  } else if (pantallaActual == 2) {
    pantalla2();
  } else if (pantallaActual == 3) {
    pantalla3();
  } else if (pantallaActual == 4) {
    pantalla4();
  } else if (pantallaActual == 5) {
    pantalla5();
  } else if (pantallaActual == 6) {
    pantalla6();
  } else if (pantallaActual == 7) {
    pantalla7();
  }
}


void mousePressed() {
  //play
  if (pantallaActual == 0) {
    if (mouseX > 250 && mouseX < 390 && mouseY > 25 && mouseY < 75) {
      haciendoFade = true;
    }
  }

  //reset
  if (pantallaActual == 7) {
    if (mouseX > 210 && mouseX < 430 && mouseY > 205 && mouseY < 275) {
      pantallaActual = 0;
      contador = 0;
    }
  }
}
