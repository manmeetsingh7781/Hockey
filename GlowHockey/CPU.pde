class CPU {
int radius = 40;
float x, y;


CPU(int x, int y, int radius){
  this.x = x;
  this.y = y;
  this.radius = radius;
}

public void setupPlayer(){
  
  fill(255, 0, 0);
  noStroke();
  rect(this.x, this.y, this.radius, this.radius);

}


public void updatePlayer(){

}


private void syncPosition(float x, float y){
  if(ball.y <= screen_height/2){
  this.x = x - this.radius;
  this.y = y - this.radius;
  }
}

}
