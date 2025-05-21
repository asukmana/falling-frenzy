extends Area2D

@export var speed = 300  # pixels per second

# Access the Sprite2D node (adjust the node path if different)
# onready var player_sprite = $Player/Sprite2D  # safely gets the Sprite2D node after ready

# Get the texture size
# var texture_size = sprite.texture.get_size()

# Get the width
var player_width:float

func _ready():
	# Access the Sprite2D node (adjust the node path if different)
	var sprite = $Sprite2D
	# Get the texture size
	var texture_size = sprite.texture.get_size()
	player_width = texture_size.x * global_scale.x
	
func _process(delta):
	var direction = 0
	if Input.is_action_pressed("ui_left"):
		direction -= 1
	if Input.is_action_pressed("ui_right"):
		direction += 1

	position.x += direction * speed * delta
	# Clamp position so player stays inside screen bounds
	position.x = clamp(position.x, 0 + player_width/2, 480 - player_width/2)
