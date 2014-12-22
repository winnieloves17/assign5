class Bar{
  
  //property
  float x;
  float y;
  float bl;
  float thickness;
  
  //method
  void move(){
    x = mouseX;
    //follows mouseX
  }
  
  void display(){
    fill(255,255,255);
    rectMode(CENTER);
    rect(x,y,bl,thickness);
  }

  
  //constructor
  
  Bar(float bl){
    this.bl = bl;
    this.thickness = 10;
    this.y = height-10;
    //fixes at the bottom    
  }
}

