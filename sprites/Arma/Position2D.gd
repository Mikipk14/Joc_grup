extends Position2D

export var bala : PackedScene

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("Disparar"):
		dispara()
	look_at(get_global_mouse_position())
	
#	var direccio = global_position.direction_to(get_global_mouse_position())
	pass

func dispara():
	var nova_bala = bala.instance()
	nova_bala.global_position = $"Ak-47/Punta".global_position
	nova_bala.look_at(get_global_mouse_position())
	nova_bala.velocitat = 300 * nova_bala.global_position.direction_to(get_global_mouse_position())
	get_tree().current_scene.add_child(nova_bala)
	
