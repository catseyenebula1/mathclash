extends ProgressBar

var current_health = 5
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$".".max_value = current_health
	$".".value = 5

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _lowerHealth():
	if (current_health > 1):
		current_health -= 1
		$".".value = current_health
	else:
		_endGame()
		
func _endGame():
	get_tree().change_scene_to_file("res://Scenes/menu.tscn")
