
class Rama {
     PVector coordenadas;
     PVector linea;
}

ArrayList<Rama> puntobase = new ArrayList<Rama>();

void setup(){
 
  size(600,600);

}


void draw(){
    background(255);
    Rama ramita = new Rama();
    ramita.coordenadas = new PVector(width/2,height);
    translate(width/2,height);
    float angle = map(mouseX,0,width,0,PI);
    float propo = map(mouseY,0,height,0.1,0.9);
    ramita.linea = new PVector(angle,propo);
    puntobase.add(ramita);
    //println(ramita.linea.x);
    //println(ramita.linea.y);
    //println("X:" + ramita.coordenadas.x);
    //println("Y: " + ramita.coordenadas.y);
    branch(50,propo,angle);
    smooth();
}


void branch(float len, float proporcion, float angulo){
 //Funcion recursiva para el arbol fractal
  
  line(0,0,0,-len);
  Rama ramita = new Rama();
  ramita.linea = new PVector(proporcion,angulo);
  ramita.coordenadas = new PVector(mouseX,mouseY); //<>//
  //println("X:" + ramita.coordenadas.x);
  //println("Y: " + ramita.coordenadas.y);
  
  if(len>10) {
    
    // Lado Izquierdo
    pushMatrix();
    translate(0, -len); //porque no me muevo de donde estoy
    rotate(angulo);  // para dar rumbo
    branch(len*proporcion,proporcion,angulo);
    popMatrix();
    
    //Lado Derecho
    pushMatrix();
    translate(0, -len);
    rotate(-angulo);  // para dar rumbo
    branch(len*proporcion,proporcion,angulo);
    popMatrix();
    
  }
  
}