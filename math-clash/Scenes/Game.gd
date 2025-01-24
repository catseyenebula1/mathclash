extends Node2D
var rng = RandomNumberGenerator.new()
var number = [1,2,3,4,5,6,7,8,9,10]
var operation = ["+","-","*","/"]
@onready var label: Label = $Label
@onready var scoreDisplay: Label = $Score
var random_Number1 = 0
var random_Number2 = 0
var operate = ""
var correct = 0
var score = 0

var enemy_node
var lives 

# Called when the node enters the scene tree for the first time.

func _ready() -> void:
	var randNum = rng.randf_range(0,number.size())
	random_Number1 = number[randNum]
	randNum = rng.randf_range(0,number.size())
	random_Number2 = number[randNum]
	randNum = rng.randf_range(0,operation.size())
	operate = operation[randNum]
	
	
	label.text = str(random_Number1) + " " + operate + " " + str(random_Number2) 
	print("entered")
	
	enemy_node = $enemy/enemy_sprite
	lives = $HealthBar
	scoreDisplay.text = str(score)

func _process(delta: float) -> void:
		if(enemy_node._isTouching()):
			lives._lowerHealth()
			enemy_node._ready()

func _on_input_text_submitted(new_text: String) -> void:
	match operate:
		"+":
			correct = random_Number1 + random_Number2
		"-":
			correct = random_Number1 - random_Number2
		"*":
			correct = random_Number1 * random_Number2
		"/":
			correct = random_Number1 / random_Number2
	
	if (float(new_text) == correct):
		score += 1
		print (score)
		enemy_node._lower_speed()
	else:
		lives._lowerHealth()
		print("wrong")
	_ready()
	
func _on_timer_timeout() -> void:
	pass
