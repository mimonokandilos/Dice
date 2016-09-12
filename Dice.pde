void setup()
{
	size(400,400);
	noLoop();
}
void draw()
{
	background(0);
	int digit = 0;
for(int myY =10; myY <=350; myY +=70)
{
	for( int myX = 0; myX < 400; myX = myX + 70)
		{
		Die juan = new Die(myX, myY);
		juan.roll();
		juan.show();



		}
	}
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	//variable declarations here
	int number;
	int myX, myY;
	Die(int x, int y)//constructor
	{
		number = (int)(Math.random()*6);
		myX = x;
		myY = y;

		if( dig)

		
	}
	void roll()
	{
		number = 6;
		
		if(Math.random()*6 < 1)
		{
			number = 1;
		}
		else if(Math.random()*6 < 2)
		{
			number = 2;
		}
		else if(Math.random()*6 < 3)
		{
			number = 3;
		}
		else if(Math.random()*6 < 4)
		{
			number = 4;
		}
		else if(Math.random()*6 < 5)
		{
			number = 5;
		}
		else if(Math.random()*6 < 6)
		{
			number = 6;
		}
		
		
	}
	void show()
	{

		noStroke();
		fill(255);
		rect(myX, myY, 50, 50, 10);
		
		fill(0);
		if(number == 1)
		{

			ellipse(myX+25, myY+25,7, 7);
		}
		
		if(number == 2)
		{
			ellipse(myX+5, myY+5, 7, 7);
			ellipse(myX+45, myY+45, 7, 7);

		}
		
		if(number == 3)
		{
			ellipse(myX+5, myY+5, 7, 7);
			ellipse(myX+25, myY+25, 7, 7);
			ellipse(myX+45, myY+45, 7, 7);
		}
		
		if(number == 4)
		{
			ellipse(myX+5, myY+5, 7, 7);
			ellipse(myX+5, myY+45, 7, 7);
			ellipse(myX+45, myY+5, 7, 7);
			ellipse(myX+45, myY+45, 7, 7);
		}
		if(number == 5)
		{
			ellipse(myX+5, myY+5, 7, 7);
			ellipse(myX+5, myY+45, 7, 7);
			ellipse(myX+25, myY+25, 7, 7);
			ellipse(myX+45, myY+5, 7, 7);
			ellipse(myX+45, myY+45, 7, 7);
		}
		if(number == 6)
		{
			ellipse(myX+5, myY+5, 7, 7);
			ellipse(myX+5, myY+25, 7, 7);
			ellipse(myX+5, myY+45, 7, 7);
			ellipse(myX+45, myY+5, 7, 7);
			ellipse(myX+45, myY+25, 7, 7);
			ellipse(myX+45, myY+45, 7, 7);
		}
		
	}
}
