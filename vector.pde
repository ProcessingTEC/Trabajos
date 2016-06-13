//Created by Adriana, Francisco

ArrayList<rama> arbol = new ArrayList<rama>();

void setup()
{
  size(600, 600);

  Crea_arbol();
}

void Crea_arbol() {
  PVector v1 = new PVector (width/2, height);
  PVector v2 = new PVector (width/2, height-200);
  arbol.add(new rama(v1, v2));

  //bolas.add(new Bola(random(width), random(height)));
  CreaRama(200, v2, HALF_PI/2);
}

void draw()
{
  background(255);
  for (int i=0;i<3;i++){
    arbol.get(i).Dibujar();
    
  }
  printArray(arbol);
  //for (rama r : arbol) {
  //  r.Dibujar();
  //}
  
  
  //stroke(0,150);
  //translate(width/2,height);

  //float angle =map(mouseX, 0, width, 0, PI);
  //float prop =map(mouseX, 0, height, 0.1, 0.9);
  //branch(200, prop, angle);
  
  //CreaRama(len, width/2, height, prop, 0);
  //smooth();
}

void CreaRama(float len, PVector origen, float angle) {

  if (len>150) {
    PVector destino = new PVector();
    destino = origen;
    PVector agregado = new PVector();
    agregado.x = 0;
    agregado.y = -len;
    destino.add(agregado);
    destino.rotate(angle);
    arbol.add(new rama(origen, destino));
    CreaRama(len*0.8, destino, angle);
    agregado.x = 0;
    agregado.y = -len;
    destino.add(agregado);
    destino.rotate(-angle);
    arbol.add(new rama(origen, destino));
    CreaRama(len*0.8, destino, angle);
    
  }
}

//void branch(float len, int x, int y, float p, float a){
//  line(0, 0, 0, -len);
//  ramas.add();
//  if (len>10){
//    pushMatrix();
//    translate(0, -len);
//    //rotate(HALF_PI/2);
//    rotate(a);
//    branch(len*p, p, a);
//    popMatrix();

//    pushMatrix();
//    translate(0, -len);
//    rotate(-a);
//    branch(len*p, p, a);
//    popMatrix();

//  }