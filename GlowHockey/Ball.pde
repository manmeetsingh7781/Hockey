class Ball extends CPU {
  
  int radius = 40;
  float x, y, movementX = 5, movementY = 5;
  
public Ball(int x, int y, int radius) {
  super(x, y, radius);
  this.y = screen_height/2;
  this.x = screen_width/2;
}

@Override
public void setupPlayer(){
  fill(0, 255, 0);
  ellipse(this.x, this.y, this.radius, this.radius);
}


@Override 
public void updatePlayer(){

  this.y += this.movementY;
  this.x += this.movementX;


   
  if(this.y >= screen_height || this.y <= 0) {
    this.movementY = -this.movementY;
  }
  
  if(this.x >= screen_width || this.x <= 0 ){
      this.movementX = -this.movementX;
  }

  if(crashWith(myPlayer)){
     this.movementY = -this.movementY;
      if(this.movementX >0){
            this.movementX = -this.movementX;
      }else{
            this.movementX = +this.movementX;
      }
  }
  
  
  
}

public boolean crashWith(Player otherObj) {
        float myleft = this.x;
        float myright = this.x + (this.radius);
        
        float mytop = this.y;
        float mybottom = this.y + (this.radius);
        
        float otherleft = otherObj.x;
        float otherright = otherObj.x + (otherObj.radius);
        
        float othertop = otherObj.y;
        float otherbottom = otherObj.y + (otherObj.radius);
        
        boolean crash = true;
        if ((mybottom < othertop) || (mytop > otherbottom) || (myright < otherleft) || (myleft > otherright)) {
            crash = false;
        }
        return crash;
    }


}
