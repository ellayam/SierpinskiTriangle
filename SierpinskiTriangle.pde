public void setup() {
  size(500,500);
  background(255);
  noStroke();
  fill((int)(Math.random()*200)+100,(int)(Math.random()*200)+100,(int)(Math.random()*200)+100);
}

public void draw() {
  sierpinski(250,0,500);
}

int base = 10;
public void keyPressed() {
  background(255);
  fill((int)(Math.random()*100)+100,(int)(Math.random()*100)+100,(int)(Math.random()*100)+100);
  if(base > 130) {
    base = 10;
  }
  if(key == ' ') {
    base +=20;
  }
}

public void sierpinski(int x, int y, int len) {
  if(len <= base) {
    triangle(x,y,x-len/2,y+len,x+len/2,y+len);
  } else {
    sierpinski(x,y,len/2);
    sierpinski(x-len/4,y+len/2,len/2);
    sierpinski(x+len/4,y+len/2,len/2);
  }
}
