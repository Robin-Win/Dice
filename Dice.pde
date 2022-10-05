//variable for sum of dice rolls
int sum = 0;
//sets up the screen
void setup()
  {
    size(400, 400);
    noLoop();
  }
 //draws the dice blueprint from rollDice and writes the text showing the sum
void draw()
  {
      //your code here
      background(205, 205, 250);
      rollDice();
      text("Sum of dice roll: " + sum, 150, 50); 
  }
 //sets the final blueprint for the dice and makes them in a grid of 3x3, calling them through roll, then show
  void rollDice()
  {
    sum = 0;
    for(int y = 100; y <= 300; y += 100)
    {
      for(int x = 50; x < 300; x += 100)
      {
       Die dicey = new Die(x, y);
       dicey.roll();
       dicey.show();
      }
    }
  }
 
 //rerolls dice when mouse is clicked on screen
void mousePressed()
  {
      redraw();
  }
 
class Die //models one single dice cube
  {
      //member variable declarations here
      int dx, dy, dice;
     
      Die(int x, int y) //constructor
      {
          //variable initializations here
          dice = 0;
          dx = x;
          dy = y;
      }
 //uses rng to decide dice num for each die    
void roll()
      {
          //your code here
          dice = (int)((Math.random())*6+1);
          sum = sum + dice;
          System.out.println(sum);


      }
  //uses the num from rng to get it's appropriate die image
void show()
      {
          //your code here
          fill(255, 255, 255);
          rect(dx, dy, 100, 100);
          fill(0);
          if (dice == 1){
           ellipse(dx+50, dy+50, 25, 25); 
          } else if (dice == 2){
           ellipse(dx+20, dy+20, 25, 25); 
           ellipse(dx+80, dy+80, 25, 25); 
          } else if (dice == 3){
           ellipse(dx+20, dy+20, 25, 25); 
           ellipse(dx+50, dy+50, 25, 25); 
           ellipse(dx+80, dy+80, 25, 25); 
          } else if (dice == 4){
           ellipse(dx+20, dy+20, 25, 25); 
           ellipse(dx+20, dy+80, 25, 25); 
           ellipse(dx+80, dy+20, 25, 25); 
           ellipse(dx+80, dy+80, 25, 25); 
          } else if (dice == 5){
           ellipse(dx+50, dy+50, 25, 25); 
           ellipse(dx+20, dy+20, 25, 25); 
           ellipse(dx+20, dy+80, 25, 25); 
           ellipse(dx+80, dy+20, 25, 25); 
           ellipse(dx+80, dy+80, 25, 25); 
          } else if (dice == 6){
           ellipse(dx+20, dy+20, 25, 25); 
           ellipse(dx+80, dy+20, 25, 25); 
           ellipse(dx+80, dy+50, 25, 25); 
           ellipse(dx+20, dy+50, 25, 25); 
           ellipse(dx+80, dy+80, 25, 25); 
           ellipse(dx+20, dy+80, 25, 25); 
          }
      }
  }
