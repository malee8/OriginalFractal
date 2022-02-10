int i=256;
public void setup(){
  size(500,500);
  noLoop();
}
public void draw(){
  background(255);
  fractal(250,250,256);
}
public void mouseClicked(){
  if(i>4){
    i=i/2;
  }
  else{
    i=256;
  }
  redraw();
}
public void fractal(int x, int y, int len){
  ellipse(x+len/2,y,len/2,len/2);
  ellipse(x-len/2,y,len/2,len/2);
  ellipse(x,y+len/2,len/2,len/2);
  ellipse(x,y-len/2,len/2,len/2);
  if(len<=i){
    ellipse(x,y,len,len);
  }
  else{
    fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
    fractal(x+len/2,y,len/2);
    fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
    fractal(x-len/2,y,len/2);
    fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
    fractal(x,y+len/2,len/2);
    fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
    fractal(x,y-len/2,len/2);
  }
}
