extends Label
@onready var lastScore: Label = $"." #idk why its called . but it works

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	lastScore.text = "Score: " + str(global.score)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
