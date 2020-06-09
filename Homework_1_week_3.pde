String[] fontList = PFont.list();
PFont myFont;  

int flag = 0;                 
float R = 210;                 
float G = 40;
float B = 210;

void setup(){
size(1200,1200);
smooth();
noLoop();

}

void draw(){
  squares();
  text();
}
 
void squares(){
background(255);
for(int i = 50; i <= width-50; i+= 50){
  for(int j = 50; j <= height-50; j+= 50){
    pushMatrix();              
    translate(i,j);            
    rectMode(CENTER);
     R -= 2;                   
     G += 2;                   
     B += 5;
    fill(R,G,B);
    noStroke();
    rotate(degrees(flag*50)); 
    flag = flag + 1;           
    rect(10,0,20,20);           
    popMatrix();
    
    }
}
}


void text(){
  myFont = createFont("Helvetica",100);
  textAlign(1000, 500);
  textSize(50); 
  text("SQUARES", 0, 50);
}
