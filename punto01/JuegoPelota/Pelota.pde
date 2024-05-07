class Pelota extends GameObject implements IContadorRebote{
  private PImage imagen;
  private PVector velocidad;
  private float radio;
  
  public Pelota(PVector position){
    super(position);
    this.imagen = loadImage("pelota.png");
    this.imagen.resize(100,100);
    this.radio = 50;
    this.velocidad = new PVector(5,0);
  }
  
  public void display(){
    imageMode(CENTER);
    image(imagen,this.position.x,this.position.y);
  }
  
  public void mover(){
    this.position.x+=this.velocidad.x;
  }
  
  public boolean validarRebote(int anchoPantalla){
    boolean rebota = false;
    if(this.position.x + (this.radio)>anchoPantalla){
      rebota = true;
      this.velocidad.x*=(-1);
    }
    return rebota;
  }
}
