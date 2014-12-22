class Ball{
  
//property  
  float size;
  float x ;
  float y ;
  float xSpeed;
  float ySpeed;

// method
  void move(){
    x+=xSpeed;
    y+=ySpeed;
    
    if (x-size/2<0 || x>width-size/2){
      xSpeed*=-1;
    }
    
    if (y-size/2<0 || y>height-size/2){
      ySpeed*=-1;
    }
  

    float ballBottom  = y+size/2;
    float barLength = bar.y-10/2;
    float barLeft   = bar.x-bar.bl/2;
    float barRight  = bar.x+bar.bl/2;

    
    if(ballBottom>barLength && x>barLeft && x<barRight){
      ySpeed*=-1;  
    }
  }

  void display(){
    fill(255,255,255);
    ellipse(x,y,size,size);
  }
  
  //constructor
  Ball(){
    x = random(width);
    y = random(height);
    xSpeed = 5;
    ySpeed = 3;
    size = 10;    
  }
  
