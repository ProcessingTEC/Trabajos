/*Tomas de Camino
Editado por Gustavo Richmond
 */
int nBolas =30;
float [][] bolas = new float[nBolas][2];
 
void setup() {
  size(600, 600);
  noCursor();
  smooth();
  colorMode(HSB, 255, 255, 255);
  for (int i=0;i<nBolas;i++) {
    bolas[i][0]=random(width);
    bolas[i][1]=random(width);
  }
}
 
void draw() {
  noStroke();
  background(255);
  fill(116, 255, 255);
  ellipse(mouseX, mouseY, 20, 20);//dibuja la elipse del mouse
  fill(100, 200, 255, 100);
  for (int i=0;i<nBolas;i++) {
    float distancia = sqrt(sq(mouseX-bolas[i][0])+sq(mouseY-bolas[i][1]));
    noStroke();
    ellipse(bolas[i][0], bolas[i][1], 60, 60);
    if(distancia<200){
     //calcula la nueva posicion de la bola
     strokeWeight(2);
     stroke(131,200,255,100);
     line(mouseX,mouseY,bolas[i][0],bolas[i][1]);
     bolas[i][0]-=(mouseX-bolas[i][0])/(i*5);
     bolas[i][1]-=(mouseY-bolas[i][1])/(i*5);
    }
  }
}