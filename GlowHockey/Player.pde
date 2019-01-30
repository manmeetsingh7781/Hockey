class Player extends CPU {

  int radius;
  float x, y;
  
Player(int x, int y, int radius) {
      super(x, y, radius);
      this.x = x;
      this.y = y;
      this.radius = radius;
}

@Override
public void setupPlayer(){
  fill(125, 0, 255);
  noStroke();
  circle(this.x, this.y, this.radius);
}


@Override 
public void updatePlayer(){
  
    this.x = mouseX-(this.radius/2);
    this.y = mouseY-(this.radius/2);
    
    if(this.y <= screen_height/2){
      this.y  =  screen_height/2;
    }
  
  if(this.x <= 10){
  this.x = 10;
}


}
  
  

}
