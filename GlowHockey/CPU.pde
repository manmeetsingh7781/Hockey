class CPU {
int radius;
float x, y;


CPU(int x, int y, int radius){
  this.x = x;
  this.y = y;
  this.radius = radius;
}

public void setupPlayer(){
  
  fill(255, 0, 0);
  noStroke();
  circle(this.x, this.y, this.radius);

}


public void updatePlayer(){
if(this.x <= 0){
  this.x = 1;
  
}
if(this.x >= screen_width){
this.x = screen_width;
}

}


private void syncPosition(float x){
  if(ball.y <= screen_height/2+ball.radius){

      this.x = x;

}


  if(crashWith(ball, myPlayer) && ball.y >= screen_height/2){
    this.y = random(50, screen_height/2-this.radius);
  }

}

}
