class Player extends CPU {

  int radius = 40;
  float x, y;
  
Player(int x, int y, int radius) {
    super(x, y, radius);
}

@Override
public void setupPlayer(){
  fill(125, 0, 255);
  noStroke();
  rect(this.x, this.y, this.radius, this.radius);
}


@Override 
public void updatePlayer(){
  
    this.x = mouseX-(this.radius/2);
    this.y = mouseY-(this.radius/2);
    
    if(this.y <= screen_height/2){
      this.y  =  screen_height/2;
    }
  


}
  
  

}
