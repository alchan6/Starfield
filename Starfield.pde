Star [] ferb;
void setup(){
  noStroke();
  size(500,500);
  ferb = new Star[1000];
  for(int i = 0; i < ferb.length; i++){
    ferb[i] = new Star();
  }
  for(int i = 0; i < 20 ; i++){
    ferb[i] = new Planet();
  }
}

void draw(){
  background(0);
  fill(255);
  ellipse(190,250,100,50);
  ellipse(310,250,100,50);
  fill(0,191,255);
  ellipse(190,250,50,50);
  ellipse(310,250,50,50);
   for(int i = 0; i < ferb.length; i++){
     ferb[i].show();
     ferb[i].move();
   }
   
}

class Star{
  double myX, myY, mySpeed, myAngle;
  int myColor, myHeight, myWidth;
  Star(){
    myX = 240.0;
    myY = 240.0;
    myAngle = Math.random()*2*Math.PI;
    mySpeed = Math.random()*15+1;
    myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
    myHeight = 3;
    myWidth = 15;
  }
  
  void move(){
    myX = myX + Math.cos(myAngle) * mySpeed;
    myY = myY + Math.sin(myAngle) * mySpeed;

  }
  
  void show(){
    fill(myColor);
    ellipse((float)myX,(float)myY,myWidth,myHeight);
  }
}
void mousePressed(){
  for(int i = 0; i < ferb.length; i++){
    ferb[i].myX = 250;
    ferb[i].myY =250;
    ferb[i].myAngle = Math.random()*2*Math.PI;
    ferb[i].mySpeed = Math.random()*15+1;
  }
  
}
class Planet extends Star{
  Planet(){
    myX = 250.0;
    myY = 250.0;
    myAngle = Math.random()*2*Math.PI;
    mySpeed = Math.random()*5+1;
    myColor = color(255,0,0);
    myHeight = 20;
    myWidth = 20;
  }
  void move(){
    myX = myX + (int)(Math.random()*5)-2;
    myY = myY + (int)(Math.random()*5)-2;
  }
}
