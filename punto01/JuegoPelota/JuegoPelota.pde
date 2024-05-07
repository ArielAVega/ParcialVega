private Pelota pelota;
private int contadorRebotes;
private int anchoPantalla;
private PImage imageBackground;

void setup(){
  pelota = new Pelota(new PVector(width/2,height/2));
  contadorRebotes = 0;
  imageBackground = loadImage("cesped.png");
  imageBackground.resize(width,height);
}

void settings(){
  anchoPantalla=600;
  size(anchoPantalla,600);
}

public void draw(){
  visualizarFondo();
  pelota.display();
  pelota.mover();
  actualizarContador();
  visualizarContador();
}

public void visualizarContador(){
  textSize(40);
  text("Contador de rebotes: "+contadorRebotes,100,200);
}

public void actualizarContador(){
  boolean rebota = pelota.validarRebote(anchoPantalla);
  if(rebota){
    contadorRebotes++;
  }
}

public void visualizarFondo(){
   imageMode(CORNER);
   image(imageBackground,0,0); 
}
