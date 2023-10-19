//José María Manero


//El siguiente código dibuja una pieza de arte generativo con trazos totalmente
//independientes.
//Se han utilizado diferentes arrays y bucles para dibujar trazados que bajan
//lentamente por la pantalla mientras van desapareciendo.
//Cada uno tiene una velocidad independiente, tamaño distinto y posiciones diferentes.

//Con cada ejecución aparece una obra distinta de arte generativo
//-----------------------------------------------------------


int numpuntos = 60; // numero de trazados que aparecerán
float colorLine[] = new float[numpuntos]; //tonalidad para cada trazado
float posicioX[] = new float[numpuntos]; //posicions horitzontals
float posicioY[] = new float[numpuntos]; //posicions verticals
float size[] = new float[numpuntos]; //tamaño del trazado que cambiará
float speed[] = new float[numpuntos]; //velocidad de bajada de cada trazado
    
void setup() {
  size(600, 600); //se configura la pantalla
  background(255,255,255); //se elige un fondo blanco como lienzo
  // iniciamos los datos de cada trazado con el siguiente bucle
  for (int i=0; i < numpuntos; i++) {
    posicioX[i] = random(width); //posición random de todo el ancho del lienzo
    posicioY[i] = -5; //se iniciarán desde la parte superior de la pantalla
    colorLine[i] = 150-i; //cada trazado tendrá un tono más oscuro
    noStroke(); //se elimina el contorno de los puntos que forman el trazado
    speed[i] = random(0.5,1); //se define una velocidad random de bajada de cada trazo
    } //fin del bucle
  }
void draw() { //se dan las ordenes para dibujar
  
  // bucle que dibujará cada circulo modificando su posición
  //dejando un rastro que se va aclarando cada vez
  for (int i=0; i < numpuntos; i++) {           
    fill(colorLine[i]); //se elige el nuevo tono de gris
    size[i] = random(10);  //se modifica el tamaño del punto   
    circle(posicioX[i], posicioY[i], size[i]); //Se dibuja el circulo
    //antes de finalizar el bucle
    //se declaran las nuevas variables para el siguiente frame
    colorLine[i] += 0.2;   //se modifica el tono de gris
    posicioY[i] += speed[i]; //se modifica la altura
    posicioX[i] += random(-3,3); //se modifica el eje horizontal   
    // fin del bucle
  }
}

  
  
 
