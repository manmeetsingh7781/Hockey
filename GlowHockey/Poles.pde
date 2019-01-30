class Poles {
int radius = 90, x, y;

Poles(int x, int y) {

this.x = x;
this.y = y;

}
public void updatePoles(){

fill(255);
strokeWeight(1.0);
strokeCap(ROUND);
circle(this.x, this.y, this.radius);

}

}
