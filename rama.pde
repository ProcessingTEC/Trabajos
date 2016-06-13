class rama {
  private PVector origen;
  private PVector destino;
  
  public rama(PVector vorigen, PVector vdestino) {
    this.origen = vorigen;
    this.destino= vdestino;
  }
  
  public void Dibujar(){
    //stroke(gruesoLinea);
    //stroke(color);
    line(origen.x, origen.y,destino.x, destino.y);
    
  }
  
}