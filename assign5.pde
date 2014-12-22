Ball ball;
Bar bar;
Bricks [] bList;
//declare object

final int GAME_START   = 0;
final int GAME_PLAYING = 1;
int gamestate;     

void printText(String title, int y, int size){
    fill(95, 194, 226);
    textAlign(CENTER);
    textSize(size);
    text(title, width/2, y); 
}

void setup(){
  
  gamestate = GAME_START;
  
  size(640,480);
  // initialize object in setup() by calling constructor
  ball = new Ball();
  bar = new Bar(100);
  bList = new Bricks[50];
  
}

void draw(){
  background(0);
  noStroke();
  
    if (key == ENTER) {
    switch(gamestate) {
    case GAME_START:
      gamestate = GAME_PLAYING;
      break;
    }
  }

  switch(gamestate) {

  case GAME_START:
    printText( "LET'S PLAY PONG", 240, 60);
    printText( "Press ENTER to Start", 280, 20);
    

    break;

  case GAME_PLAYING:
    background(0);
   
    ball.move();
    ball.display();
  
    bar.move();
    bar.display();
   
    drawLife(); 
    pongLife(2);
    bricksMaker();
    drawBricks();   
  
    break;
 }
}

// X:1/col;Y:1%col

void bricksMaker() {
  int i = 0;
  for (int col = 0; col < 10; col++) {
    for (int row = 0; row < 5; row++) {
      int x = 85 + col * 50;
      int y = 65 + row * 50;
      bList[i] = new Bricks(x, y);
      i++;
    }
  }
}

void drawBricks() {
  for (int i=0; i<bList.length; i++) {
    Bricks bricks = bList[i];    
    if(bricks!=null){
        bricks.display(); 
    }
  }
}

void drawLife() {
  fill(230, 74, 96);
  textAlign(CENTER);
  textSize(25);  
  text("LIFE:", 36, 455);
}

void pongLife(int life){
  fill(230, 74, 96);
  for(int i=0; i <= life; i++){
    int x = 80;
    int y = 445;
    int space = 25;
    ellipse(x+i*space,y,15,15);
    ellipseMode(CENTER);
    fill(230, 74, 96);
  }
} 




/*void mouseClicked(){
  if(ball.xSpeed == 0 && ball.ySpeed == 0 && mouseButton == RIGHT){
    
    ball.x+=ball.xSpeed;
    ball.y+=ball.ySpeed;  
  }else{
     ball.x=bar.x+20/2;
     ball.y=bar.y-bar.thickness/2;
  } 
}*/

