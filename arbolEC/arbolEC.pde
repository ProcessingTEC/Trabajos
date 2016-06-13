Branch b;
PVector v1 = new PVector(300,600);

void setup() {
  size(600, 600);
  b=new Branch(v1,-100,5);
 
}

void draw() {
  background(255);
  b.run();
}

class Branch {

  PVector pos, pos2;
  Branch leftBr, rightBr;
  float dist, x, y;

  Branch(PVector _pos, float _dist, int b) {

    pos = _pos;
    pos2 = new PVector();
    dist=_dist;
    pos2 = pos.copy();
    pos2.add(0, dist);
    
    if (b>0) {
      leftBr = new Branch(pos2, dist, b-1);
      rightBr = new Branch(pos2, dist, b-1);
    
    }
  }

  void run() {
    println(pos2);
    line(pos.x, pos.y, pos2.x, pos2.y);
    
  }
}