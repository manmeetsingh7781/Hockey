
int ball_size = 60, screen_width, screen_height, delay=0;




Player myPlayer;
CPU opponent;
Ball ball;
Poles upSidepole, downSidepole;

int[] LeftCol = {192, 57, 43};
int[] RightCol = {230, 126, 34};
int[] BotCol = {241, 196, 15};
int[] topCol = {46, 204, 113};
void setup(){

size(600, 800, P3D);

screen_width = width;
screen_height = height;




myPlayer = new Player((screen_width/2), 500, ball_size);
opponent = new CPU((screen_width/2), 100, ball_size);
ball = new Ball((screen_width/2), screen_height/2, ball_size);
upSidepole = new Poles((screen_width/2), -10);
downSidepole = new Poles((screen_width/2),  screen_height+10);

noCursor();

}


void draw(){
background(0);



// Divider
stroke(255);
strokeWeight(1);
line(0, screen_height/2, screen_width, screen_height/2);

upSidepole.updatePoles();
downSidepole.updatePoles();



myPlayer.setupPlayer();
myPlayer.updatePlayer();


opponent.setupPlayer();
opponent.updatePlayer();


opponent.syncPosition(ball.x);


ball.setupPlayer();
ball.updatePlayer();


// LEFT RIGHT
drawBorders(0, 0, 0, screen_height, LeftCol);
drawBorders(screen_width , 0, screen_width, screen_height, RightCol);


// BOTTOM
drawBorders(0 , screen_height, screen_width/2 - (downSidepole.radius/2), screen_height, BotCol);
drawBorders(screen_width/2+(downSidepole.radius/2)  , screen_height, screen_width, screen_height, BotCol);


// TOP
drawBorders(0 , 0, screen_width/2 - (upSidepole.radius/2), 0, topCol);
drawBorders(screen_width/2+(upSidepole.radius/2)  , 0, screen_width, 0, topCol);


if(crashWith(ball, myPlayer)){
     ball.movementY = -ball.movementY;
      if(ball.movementX >0){
            ball.movementX = -ball.movementX;
      }else{
            ball.movementX = +ball.movementX;
      }
  }


if(crashWith(ball, opponent)){
     ball.movementY = -ball.movementY;
     

      if(ball.movementX >0){
            ball.movementX = -ball.movementX;
      }else{
            ball.movementX = +ball.movementX;
      }
  }

}

public boolean crashWith(Ball otherObj, Player one) {
        float myleft = one.x;
        float myright = one.x + (one.radius);
        
        float mytop = one.y;
        float mybottom = one.y + (one.radius);
        
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
    
    
    
public boolean crashWith(Ball otherObj, CPU one) {
        float myleft = one.x;
        float myright = one.x + (one.radius);
        
        float mytop = one.y;
        float mybottom = one.y + (one.radius);
        
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


public boolean crashWith(Player otherObj, CPU one) {
        float myleft = one.x;
        float myright = one.x + (one.radius);
        
        float mytop = one.y;
        float mybottom = one.y + (one.radius);
        
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

public boolean crashWith(Ball otherObj, Poles one) {
        float myleft = one.x;
        float myright = one.x + (one.radius);
        
        float mytop = one.y;
        float mybottom = one.y + (one.radius);
        
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


public void drawBorders(int x1, int y1, int x2, int y2, int[] cols){
  
      strokeWeight(10);
      stroke(cols[0], cols[1], cols[2]);
      
      line(x1, y1, x2, y2);
  }
