extends Label
@onready var highScore: Label = $"."

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	highScore.text = "High Score: " + str(global.highScore)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
