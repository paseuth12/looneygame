extends Control

var story = "hello my name is %s My last name is %s What is your pet %s What do you like to eat"
var answers = ["Ping","Pp","Cat","meet"]
var questions = []

func _ready():
	print (story && answers)
	$Displaytext.text = "welcome!!! \nWhat is your name?"
	
	questions.append("welcome!!! \nWaht is your name?")
	questions.append("What is your last name?")
	questions.append("what is yor pet?")
	questions.append("What do you like to eat?")
	print(questions)	
	print(len(questions))
	print(questions[0])
	print(questions[3])

func _on_PlayerButton_pressed():
	$Displaytext.text = "PING"
