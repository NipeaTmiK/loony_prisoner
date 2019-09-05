extends Control

var story = "My name is ... I'm a prisoner ... \nand i want to break a prison ... \nBut i don't have alliance\nSo....Ineed to find them for my plan..."
var questions = ["Gok", "yes", "no", "sure", "ok"]
var answers = []
	
func _ready():
	print( story % answers )
	
	
	
	$DisplayText.text = "Hello,Player.Welcome to \nPRISONER GAME.\nFirst.I want to know your name"
	
	questions.append("Hello,Player.Welcome to \nPRISONER GAME.\nFirst.I want to know your name")
	questions.append("Right now,you are prisoner...\nDo you want to break a prison?")
	questions.append("Ok...But..Do you have alliance?")
	questions.append("Ummm...You need them dude.Do you want to find right now?")
	questions.append("Ok!! Let's do it!!")
	
	print(questions)
	print(len(questions))
	print(questions[0])
	print(questions[1])
	print(questions[2])
	print(questions[3])
	print(questions[4])
	
func _on_PlayerInput_pressed():
	$DisplayText.text = questions
	
func _on_PlayerButton_pressed():
	$DisplayText.text = story % answers
