extends Control

var story = "My name is...I'm a prisoner.\nAnd i want to break a prison \nBut i don't have alliance\nSo.... I need to find them for my plan..."
var questions = []
var answers = []
var question_number = 0
	
func _ready():
	print( story % answers )
	
	questions.append("Hello,Player.Welcome to \nPRISONER GAME.\nFirst.I want to know your name.")
	questions.append("Right now,you are prisoner...\nDo you want to break a prison?")
	questions.append("Ok...But..Do you have alliance?")
	questions.append("Ummm...You need them dude.\nDo you want to find right now?")
	questions.append("Ok!! Let's do it!!")
	
	$VBoxContainer/DisplayText.text = questions[0]
	
func _on_PlayerButton_pressed():
	
	if question_number < len(questions)-1:
	
		answers.append( $PlayerInput.text )
		print( answers )
		$VBoxContainer/DisplayText.text = questions[question_number+1]
		question_number = question_number+1
	
	elif question_number < len(questions)-1:
	
		answers.append( $PlayerInput.text )
		print( answers )
		$VBoxContainer/DisplayText.text = story % answers
		
		$PlayerInput.text = ""
	
	