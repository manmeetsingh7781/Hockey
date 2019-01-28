int screen_width, screen_height;

int poteSize = 90, poteHoleUpX, poteHoleUpY, poteHoleDownX, poteHoleDownY;

Player myPlayer;
CPU opponent;
Ball ball;

void setup(){

size(600, 800, P3D);

screen_width = width;
screen_height = height;

poteHoleUpX = (screen_width/2);
poteHoleUpY = -10;

poteHoleDownX = (screen_width/2);
poteHoleDownY = screen_height+10;


myPlayer = new Player((screen_width/2), 500, 120);
opponent = new CPU((screen_width/2), 100, 20);
ball = new Ball((screen_width/2), screen_height/2, 40);
}

void drawPote(int x, int y, int radius){
  
fill(255);
strokeWeight(1.0);
strokeCap(ROUND);
circle(x, y, radius);

}
void draw(){
background(0);

// Divider
stroke(255);
line(0, screen_height/2, screen_width, screen_height/2);


drawPote(poteHoleUpX, poteHoleUpY, poteSize);
drawPote(poteHoleDownX, poteHoleDownY, poteSize);

myPlayer.setupPlayer();
myPlayer.updatePlayer();


opponent.setupPlayer();
opponent.updatePlayer();

opponent.syncPosition(ball.x, ball.y);


ball.setupPlayer();
ball.updatePlayer();

}
