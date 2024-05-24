//COMISIÓN 5
//GUILLERMINA ARAMBURÚ 
//LEGAJO: 118960/1

PImage LIBRO, LIBRO1, LIBRO2, LIBRO3;
PFont  fuente;
int pantalla, tiempo, suma;
boolean ultimaPantalla;

void setup() {
  size(640, 480);
  LIBRO = loadImage ("LIBRO0.jpeg");
  LIBRO1 = loadImage ("LIBRO1.png");
  LIBRO2 = loadImage ("LIBRO2.jpeg");
  LIBRO3 = loadImage ("LIBRO3.jpeg"); 
  
  fuente = createFont("fuente.otf", 48);
  textFont(fuente);
  textSize(15);
  textAlign(LEFT, TOP);
  pantalla = 0;
  tiempo = 0;
  suma = 5;
  ultimaPantalla = false;
  
}
 
 void draw () {
   
  if (pantalla==0){ 
    
  push();
  background(255);
  image(LIBRO, 320, 0, 375,500);
  fill(0);
  textSize(20);
  text(" TP2  ", 0, 190);
  text(" COMISIÓN 5" , 0, 210);
  text(" GUILLERMINA ARAMBURÚ ", 0, 230);
  text(" LEGAJO: 118960/1 ", 0, 250);


 pop();
 
   }
   
   
  if (pantalla==1){
    
  push();
  background(255);
  image(LIBRO1, 0, 0,640,480);
  fill(0);
  text("Es un libro que relata una historia real", 30, 25);
  
  pop();
   }
   
    if (pantalla == 2) {
    push();
    background(255);
    image(LIBRO2, 0, 0,640,480);
    fill(255);
    text("Un Psiquiatra le cambia la vida a su paciente" ,30 ,420);
    pop();
 }
 
    if (pantalla == 3) {
    push();
    background(255);
    image(LIBRO3, 0, 0,640,480);
    fill(0);
    text("Ya que realiza una terapia holística de regresión a vidas pasadas " ,30 ,20);
    pop();
    
      if (ultimaPantalla == true) {
      push();
      fill (255,0,0);
      rect( 460,400, 150, 50);
      fill (0);
      text("Reiniciar", 500,420);
      pop();
  }
 
  }
  
   tiempo++;
  if (tiempo >= 900) {
    tiempo = 0;
    if (pantalla != 3) {
      pantalla++;
   }
   }  
  
    if (ultimaPantalla == false) {
 
    tiempo = tiempo  + suma;
    }

    if (tiempo >= 900 && pantalla != 4) {
    tiempo = 0;
    if (pantalla != 3) {
      pantalla++;
    } 
    else if (pantalla == 3) {
      ultimaPantalla = true;
    }
  
 
  
   }
   }
   
    void mouseClicked () {
    
    println (mouseX, mouseY);
    if (ultimaPantalla == true) {
    
     if (mouseX > 460 && mouseX < 460 + 150 && mouseY > 400 && mouseY < 400 + 50) {
     pantalla = 0;
     tiempo = 0;
     suma = 5;
     ultimaPantalla = false;
      
      }
      }  
      }  
    
      
  void mouseMoved() {
  if (ultimaPantalla == true) {
    
  if (mouseX > 460 && mouseX < 460 + 150 && mouseY > 400 && mouseY < 400 + 50) {
      
      } 
      }
      }
