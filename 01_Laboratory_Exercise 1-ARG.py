import turtle, random

t = turtle.Turtle()
Screen = turtle.Screen()
Screen.listen()

def moveRight():
        t.penup()
        t.setheading(0)
        t.fd(30)
def moveUp():
	t.penup()
	t.setheading(90)
	t.fd(30)
def moveLeft():
	t.penup()
	t.setheading(180)
	t.fd(30)
def moveDown():
	t.penup()
	t.setheading(270)
	t.fd(30)

def _oblong(rad):
	t.fillcolor('#E6E6FA')
	t.begin_fill()
	for i in range(2):
		t.circle(rad,90)
		t.circle(rad//2,90)
	t.end_fill()

def drawSquare():
	t.fillcolor('skyblue')
	t.penup()
	t.begin_fill()
	t.forward(100)
	t.left(90)
	t.forward(100)
	t.left(90)
	t.forward(100)
	t.left(90)
	t.forward(100)
	t.left(90)
	t.end_fill()

def drawRectangle():
	t.fillcolor('pink')
	t.penup()
	t.begin_fill()
	t.forward(150) 
	t.left(90) 
	t.forward(80)
	t.left(90) 
	t.forward(150) 
	t.left(90) 
	t.forward(80) 
	t.left(90)
	t.end_fill()

def drawTriangle():
	t.fillcolor('#E6E6FA')
	t.penup()
	t.begin_fill()
	t.forward(100)
	t.left(120)
	t.forward(100)
	t.end_fill()

def drawTrapezoid():
	t.fillcolor('#F6EEDF')
	t.penup()
	t.begin_fill()
	t.forward(180)
	t.left(120)
	t.forward(80)
	t.left(60)
	t.forward(100)
	t.left(60)
	t.forward(80)
	t.end_fill()
  
def drawCross():
	t.fillcolor('#E3BC9A')
	t.penup()
	t.begin_fill()
	for _ in range(4):
		t.fd(20)
		t.right(90)
		t.fd(20)
		t.left(90)
		t.fd(20)
		t.left(90)      
	t.end_fill()
    
Screen.onkey(moveLeft,"a")
Screen.onkey(moveRight, "d")
Screen.onkey(moveUp, "w")
Screen.onkey(moveDown, "s")

Screen.onkey(drawSquare, "r")
Screen.onkey(drawRectangle, "t")
Screen.onkey(drawTrapezoid, "y")
Screen.onkey(drawTriangle, "u")
Screen.onkey(drawCross, "i")
