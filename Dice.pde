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
	background(204, 255, 255);
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
	fill(0);
	text("current roll", 200, 365);
	text(rollTotal, 200, 380);
	rollTotal = 0; //your code here
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int diceRoll, myX, myY; //variable declarations here
	Die(int x, int y) //constructor
	{
		myX = x;
		myY = y;
		roll();  //variable initializations here
	}
	int roll()
	{
		diceRoll = (int)(Math.random()*6)+1;
		return diceRoll;
	}
	void show()
	{
		fill(0, 25, 51);
		rect(myX, myY, 50, 50);
		fill(153, 204, 255);
		if(diceRoll == 1)
		{
			ellipse(myX + 25, myY + 25, 8, 8);
		}
		else if(diceRoll == 2)
		{
			ellipse(myX + 14, myY + 36, 8, 8);
			ellipse(myX + 36, myY + 14, 8, 8);
		}
		else if(diceRoll == 3)
		{
			ellipse(myX + 25, myY + 25, 8, 8); //
			ellipse(myX + 14, myY + 36, 8, 8);
			ellipse(myX + 36, myY + 14, 8, 8);
		}
		else if(diceRoll == 4)
		{
			ellipse(myX + 14, myY + 36, 8, 8); //
			ellipse(myX + 36, myY + 14, 8, 8);
			ellipse(myX + 14, myY + 14, 8, 8);
			ellipse(myX + 36, myY + 36, 8, 8);
		}
		else if(diceRoll == 5)
		{
			ellipse(myX + 25, myY + 25, 8, 8);
			ellipse(myX + 14, myY + 36, 8, 8);
			ellipse(myX + 36, myY + 14, 8, 8);
			ellipse(myX + 14, myY + 14, 8, 8);
			ellipse(myX + 36, myY + 36, 8, 8);
		}
		else
		{
			ellipse(myX + 14, myY + 36, 8, 8);
			ellipse(myX + 36, myY + 14, 8, 8);
			ellipse(myX + 14, myY + 14, 8, 8);
			ellipse(myX + 36, myY + 36, 8, 8);
			ellipse(myX + 14, myY + 25, 8, 8); //
			ellipse(myX + 36, myY + 25, 8, 8); //
		}
	}
}
