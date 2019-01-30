class Ball extends CPU {
  
  int radius;
  float x, y, movementX = 15, movementY = 15;
  
public Ball(int x, int y, int radius) {
  super(x, y, radius);
  this.y = screen_height/2;
  this.x = screen_width/2;
  this.radius = radius;
}


@Override
public void setupPlayer(){
  
  fill(0, 255, 0);
  circle(this.x, this.y, this.radius);

}


@Override 
public void updatePlayer(){

  this.y += this.movementY;
  this.x += this.movementX;


   
  if(this.y >= screen_height-10 || this.y <= 0) {
    this.movementY = -(this.movementY);
  }
  
  if(this.x >= screen_width-10 || this.x <= 0 ){
      this.movementX = -(this.movementX);
  }

  if(this.x <= 0+10){
  this.x = 10;
  
  }
if(this.x >= screen_width-10){
this.x = screen_width-10;
}
if(crashWith(ball, upSidepole) || crashWith(ball, downSidepole)){
  noLoop();
}
} 


}
