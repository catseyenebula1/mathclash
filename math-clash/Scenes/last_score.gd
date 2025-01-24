extends Label
@onready var lastScore: Label = $"."
@onready var scoreDisplay: Label = $Score
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#lastScore.text = "High Score: "
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
