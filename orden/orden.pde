/*
Ejemplo para demostrar el orden que corren 
las instrucciones 
*/

size(400,400);

//la instrucción que 
//se escribe primero, se dibuja primero.
rect(155,155,90,90);

//el circulo (ellipse) se dibuja encima del rectangulo 
//porque la instrucción se escribe depués.
ellipse(200,200,100,100);


//si se invierte el orden

//ellipse(325,200,60,60);
//rect(300,175,50,50);

