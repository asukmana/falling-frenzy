extends Area2D

@export var speed = 150

func _ready():
	# randomize()  # Seeds the random number generator, not needed since godot 4.4
	var animations = ["black", "blue", "yellow", "grey"]
	var random_animation = animations[randi_range(0, 3)]
	$AnimatedSprite2D.play(random_animation)


func _process(delta):
	position.y += speed * delta
	if position.y > 720:
		queue_free()

func _on_area_entered(area: Area2D) -> void:
	if area.is_in_group("paddle"):
		queue_free()
