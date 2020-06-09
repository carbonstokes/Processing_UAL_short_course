PFont myFont;
float angle =0;
float R = 60;
float G = 0;
float B = 210;
color black = 0;
color white = 255;

void setup() {
  size(1200,1200); 
  rectMode(CENTER);
  myFont = createFont("Helvetica", 120);
  textFont(myFont);
  textAlign(CENTER, CENTER);  
  noStroke();
  fill(black);
}

void draw() {
  background(white);
  translate(width/2, height/2);
  for (float i = 1; i < 30; i++) {

    if (i % 5 == 0) {
      fill(R,G,B);
       //fill((5 * angle + R) % 255,(5 * angle + G)  % 255, 5 * angle % 255,B);
       //noStroke();
       //rect(0,0,width,height);
       //stroke(angle*R %255, (angle + B) % 255, (angle + G)%255);
    } else {
      fill(white);
    }
    float speed = 40;

    float move0 = 0.5*cos(radians((frameCount*i)/speed))*300;
    float move1 = 2*cos(radians((frameCount*i)/speed))*100;
    
    pushMatrix();
    translate(move1*0.5+move0, 0);
    rotate(radians(move0));
    text("STAY SAFE", 0, 0);
    popMatrix();
  }
}
