import turtle

# creating canvas
sc = turtle.Screen()
sc.bgcolor("orange")
sc.setup(400, 300)
sc.title("Welcome to Turtle Window")

# turtle object creation
board = turtle.Turtle()

# creating a square
for i in range(4):
    board.forward(100)
    board.left(90)

turtle.done()