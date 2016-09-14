int rollTotal = 0;
void setup()
{
	size(400, 400);
	noLoop();
	noStroke();
	textAlign(CENTER,CENTER);
}
void draw()
{
	background(255, 153, 51);
	int total = 0;
	for(int x = 50; x < 350; x = x + 60)
	{
		for(int y = 50; y < 350; y = y + 60)
		{
			Die bob = new Die(x, y);
			bob.show();
			rollTotal = rollTotal + bob.roll();
		}
	} 
	fill(255);
	text("current roll", 200, 365);
	rollTotal = 0 //your code here
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int diceRoll, myX, myY //variable declarations here
	Die(int x, int y) //constructor
	{
		myX = x;
		myY = y;
		roll(); //variable initializations here
	}
	void roll()
	{
		//your code here
	}
	void show()
	{
		//your code here
	}
}
