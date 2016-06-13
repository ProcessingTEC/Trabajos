void setup() {
  size(800, 800);
}

float angle = HALF_PI*0.5;

void draw() {
  background(255);
  translate(width/2, height);
  if (mouseY < 400){
  branch(mouseY/4+mouseX/4+30);
  }
  else {
  branch(mouseY/8+mouseX/8+30);
  smooth();
  }
  
}


void branch(float len) {
  line (0, 0, 0, -len); //negativo porque el positivo es hacia abajo
  if (len > 10/(mouseY+0.1)*800+3) {
    stroke(180*(mouseX+1)/800,180/(mouseY+1)*800,255*mouseY*mouseX/800/800);
    pushMatrix(); // Inicia traslado temporal
    translate(0, -len);
    rotate(angle/2*mouseX*mouseX/80000);
    branch(len*0.7); 
    popMatrix(); // Termina traslado temporal
    pushMatrix();
    translate(0, -len);
    rotate(-angle/2*mouseY*mouseY/80000);
    branch(len*0.7);
    popMatrix();
  }
}