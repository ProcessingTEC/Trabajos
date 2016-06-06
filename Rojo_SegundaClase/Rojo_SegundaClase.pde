/* Tomas de Camino Beck
prueba de colores agregando aleatoridad
*/
 
float amplitude=50;
float angle=0.01;
float x=0;
 
//size of the square for the color palette
int rectSize = 10;

void setup(){
  size(600,600);
  fill(255);
  smooth(6);
  //define la paletta de colores HSB y los m'aximos
  colorMode(HSB,width/rectSize,height/rectSize,255);
 
}
 
void draw(){
 //background(0);
 //frameRate(20);
  for(int i = 0; i < width/rectSize ; i++){
   for(int j = 0; j < height/rectSize; j++){
     noStroke();
     fill(i,j,255);
     //dibuja cuadrados del tamano definido
     //agrega variabilidad a la posicion del cuadrado
     rect(i*rectSize+random(5),j*rectSize+random(5),rectSize,rectSize);
   }
  }
  
//background(255);
frameRate(5);
fill(255,200);
stroke(0,10);
translate(width/2,0);

for(float y=0; y<height;y++){
     ellipse(x,y,50,50);
     angle+=0.01;
     if (mousePressed && (mouseButton == LEFT)) {
         translate(mouseX,mouseY);
         x = amplitude*cos(angle);
         rotate(PI/2);
     }
x = amplitude*cos(angle); 
}


  
  
} // Fin de draw