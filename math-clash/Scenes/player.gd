extends AnimatedSprite2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$".".play("default")

func _swing():
	$".".play("swing")
	
func _hurt():
	$".".play("hurt")
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_animation_finished() -> void:
	$".".play("default") # Replace with function body.
