private Pelota pelota;
private int contadorRebotes;
private int anchoPantalla;

void setup(){
  pelota = new Pelota(new PVector(width/2,height/2));
}

void settings(){
  anchoPantalla=600;
  size(anchoPantalla,600);
}

public void draw(){
  background(0);
  pelota.display();
  pelota.mover();
  boolean rebota = pelota.validarRebote(anchoPantalla);
  println(rebota);
}

public void visualizarContador(){
}

public void actualizarContador(){
}
