extends AnimatedSprite2D

var initial_x = 0
var initial_y = 0
var rng = RandomNumberGenerator.new()
var speed = 50

func _ready() -> void:
	$".".play("default")
	var edge = rng.randf_range(0.0,4.0)
	if(edge < 1):
		initial_x = 1080
		initial_y = rng.randf_range(0.0,1080)
	if(edge >= 1 and edge < 2):
		initial_x = 0
		initial_y = rng.randf_range(0.0,1080)
	if(edge >= 2 and edge < 3):
		initial_x = rng.randf_range(0.0, 1080)
		initial_y = 0
	if(edge >= 3):
		initial_x = rng.randf_range(0.0, 1080)
		initial_y = 1080
	position = Vector2(initial_x,initial_y)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var center_position = Vector2(540, 540)  # Center of the screen
	var direction = (center_position - position).normalized()
	position += direction * speed * delta
	
	
func _isTouching():
	return position.distance_to(Vector2(540, 540)) < 5


func _on_input_text_submitted(new_text: String) -> void:
	_ready()
	
func _lower_speed():
	if (speed < 1000):
		speed += 10
