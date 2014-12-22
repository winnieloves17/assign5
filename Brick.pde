class Bricks {
  
  int x;
  int y;
  int size = 40;
  int space;
  
  void display(){
    fill(100, 250, 150);
    rectMode(CENTER);
    rect(x,y,size,size);  
  }
  
  Bricks(int x, int y){
    this.x = x;
    this.y = y;
    this.size=40;
    
  }  
}
