void setup() {
  size (1000,1000); 
  noLoop(); //stops the draw() function from repeating
}
void draw() {
  frameRate(15);
  
 for (int y = 0; y<=1000; y+=200){ //rows - y
    for (int x=0; x<=1000; x+=200){ //columns - x
      facey(x,y, (float) Math.random());
    }
 }
} // ends draw
void facey (int x, int y,float sz){
strokeWeight(3);
 fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));

  beginShape();
  curveVertex(x,y); // x = 150, y = 50 for ref
  curveVertex(x,y);
  curveVertex(x-37,y+50);
  curveVertex(x-100,y+100);
  curveVertex(x-37,y+150);
  curveVertex(x,y+200);
  curveVertex(x,y+200);
  endShape();

  beginShape();
  curveVertex(x,y);
  curveVertex(x,y);
  curveVertex(x+33,y+50);
  curveVertex(x+100,y+100);
  curveVertex(x+33,y+150);
  curveVertex(x,y+200);
  curveVertex(x,y+200);
  endShape();

  fill(0,0,0);
  ellipse(x+33,y+80,10,20*sz);
  ellipse(x-33,y+80,10,20);
  //ellipse(x, y+130, 20,38);
  noFill();
   arc(x,y+88, 100,100, radians(30), radians(110));
 
}// end facey 
