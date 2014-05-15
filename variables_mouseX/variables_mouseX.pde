//variables
int x = 0;  //'int' es entero
float y = 1.0;  //'float' es decimal

void setup(){
  size(500,500);
}

void draw(){
  stroke(0,100);
  fill(255,130,80,80);
  
  //usamos las variables para determinar
  //donde se dibuja el rectangulo
  rect(x, y, mouseY, mouseX);
  
  //aumentamos por 2 el valor de 'x' y el 'y' por algo raro.
  x=x+2;
  y=y+.02*x;
}
