extends Node2D

@export var mob_scene: PackedScene

func _ready() -> void:
	pass
	#new_game()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_mob_timer_timeout() -> void:
	var mob = mob_scene.instantiate()  # Create an instance of the mob scene
	# Set mob position, rotation, or other properties here
	mob.scale = Vector2(0.25,0.25)
	mob.position = Vector2(randf_range(0, 480), 0)  # random X at top of screen
	mob.speed = randf_range(100, 200)
	add_child(mob)  # Add mob to the main scene tree so it appears in the game
	


	
