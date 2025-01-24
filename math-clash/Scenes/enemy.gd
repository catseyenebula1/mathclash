extends Sprite2D

var initial_x = 0
var initial_y = 0
var i = 0
var rng = RandomNumberGenerator.new()

func _ready() -> void:
	
	var edge = rng.randf_range(0.0,4.0)
	
	if(edge < 1):
		initial_x = 1152
		initial_y = rng.randf_range(0.0,648)
	if(edge >= 1 and edge < 2):
		initial_x = 0
		initial_y = rng.randf_range(0.0,648)
	if(edge >= 2 and edge < 3):
		initial_x = rng.randf_range(0.0, 1152)
		initial_y = 0
	if(edge >= 3):
		initial_x = rng.randf_range(0.0, 1152)
		initial_y = 648
	position = Vector2(initial_x,initial_y)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position += Vector2((576-initial_x)/100, (324-initial_y)/100)
	i += 1
	if (i == 100):
		position = Vector2(initial_x, initial_y)
		i = 0
		return
