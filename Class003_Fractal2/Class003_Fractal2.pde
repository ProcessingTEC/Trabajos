//Erick Hernandez Bonilla

class Figure
{
  PVector v;
  PVector d;
  float a;
  float l;
  float w;

  Figure (PVector v, float a, float l, float w) {  
    this.v = v;
    this.a = a;
    this.l = l;
    this.w = w;
  } 
}

ArrayList<Figure> figures = new ArrayList<Figure>();

void setup()
{
  size(600,600);
  branch(new Figure(new PVector(width/2,height), 0, 150,6), 0.78);
}

void draw()
{
  background(255);
  smooth();
  
  for(Figure f : figures)
  {
    if(abs(mouseX-f.v.x) < 100 && abs(mouseY-f.v.y) < 100)
    {
      stroke(127,0,0,5);
      f.v.x = mouseX;
      f.v.y = mouseY;
    }
    
    stroke(0);
    strokeWeight(f.w);
    line(f.v.x,f.v.y, f.d.x,f.d.y);
  }
}

void branch(Figure figure, float p)
{ 
  PVector newPoint = new PVector(figure.v.x, figure.v.y - figure.l);
  newPoint = newPoint.sub(figure.v);
  newPoint = newPoint.rotate(radians(figure.a));
  newPoint = newPoint.add(figure.v);
  
  figure.d = newPoint;
  figures.add(figure);
  
  if(figure.l<10) return;
  
  branch(new Figure(newPoint, figure.a+45, figure.l*p,figure.w * 0.7), p);
  branch(new Figure(newPoint, figure.a-45, figure.l*p,figure.w * 0.7), p);
  
}
