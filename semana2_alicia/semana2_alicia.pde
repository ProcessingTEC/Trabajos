//Tomas de Camino Beck
float amplitude = 200;
float period = 150;
int rectSize = 30;


void setup() {
  size(600, 600);
  background(0);
  
  colorMode(HSB,width/rectSize,height/rectSize,255);
 
  smooth();
  frameRate(15);
  ellipseMode(CORNERS);
  
   for(int i = 0; i < width/rectSize ; i++){
   for(int j = 0; j < height/rectSize; j++){
     noStroke();
     fill(i,j,255);
     //dibuja cuadrados del tamano definido
     //agrega variabilidad a la posicion del cuadrado
     rect(i*rectSize+random(5),j*rectSize+random(5),rectSize,rectSize);
   }
  }
}

void draw() {
    
  float col = random(50,200);
  fill(col,col);
  float x = amplitude * cos(TWO_PI * frameCount / period);
  translate(width/2, height/2);
  stroke(10);
  for (float i = 0; i<PI; i+=PI/20) {
    rotate(i);
    ellipse(x, 0, 100, 100);
  }
   
}