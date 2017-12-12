PImage button;

float k=200;
float t=250;
float x=-10;
float y=-10;
float dx = 0;
float dy = 0;

float accx = 0.8;
float accy = 0.8;

boolean isClicked= true;

void setup() {
  size(600, 600);
  
button=loadImage("0a8a31a07ea245d.png");

  
}

void draw() {
  
    background(y-x,x-y, 70);
    image(button,k,t,567/3,227/3);
    displayBall();
    moveBall();
    checkEdges(); 
 
}

void displayBall() {
    fill(x, y, 50);
    ellipse(x, y, 50, 50);
    noStroke();
}

 void checkEdges() {
    
  if (x+18 > width || x-18 < 0)
  {
    accx = random(5,7);
    dx = dx*-1;
  }

  if ( y+18 > height || y-18 < 0) {
    accy = random(2,7);
    dy = dy*-1;
  }
 }

void moveBall() {
  x = x+accx*dx;
  y = y+accy*dy;
  
}
  
 




void mouseClicked() {
  if(mouseY>250 && mouseY<326 && mouseX>200 && mouseX<389) {
    isClicked=true;
     k=1000;
     t=1000;
     dx=1;
     dy=1;
     x=width*0.5;
     y=height*0.5;
   
   
     
  }else{
    isClicked=false;
      image(button,k,t,567/3,227/3);
       
  } 
  
}