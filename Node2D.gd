extends Control

var story = "Your Answer is %s  The DragonSlyer is %s Your weapon is %s Defens weapon is %s"
var answers = []
var questions = []
var questions_number = 0

func _ready():
	$Displaytext.text = "Do you want to kill the dragon?"
	
	questions.append("You need to protect our village!!! \n Yes or No?")
	questions.append("Do you want to kill the Dragon and become a DragonSlyer put down \nYour name?")
	questions.append("Fist thing You must chooes the weapon \nSword or Arrow?")
	questions.append("Next you nees a Defend weapon \nArmor or shield")
	
	
	
	$Displaytext.text = questions[0]
	
	print(questions)	
	print(len(questions))
	print(questions[0])
	print(questions[3])

func _on_PlayerButton_pressed():
	if questions_number == 0:
		# answer the question
		answers.append($PlayerInput.text)
		print( answers )
		$Displaytext.text = questions[1]
		$PlayerInput.text = ""
	
	if questions_number == 1:
		# answer the question
		answers.append($PlayerInput.text)
		print( answers )
		$Displaytext.text = questions[2]
		$PlayerInput.text = ""
	if questions_number == 2:
		# answer the question
		answers.append($PlayerInput.text)
		print( answers )
		$Displaytext.text = questions[3]
		$PlayerInput.text = ""
	if questions_number == 3:
		# answer the question
		answers.append($PlayerInput.text)
		print( answers )
		$Displaytext.text = story % answers
		$PlayerInput.text = ""

	questions_number = questions_number +1