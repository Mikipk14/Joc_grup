extends Position2D

export var bala : PackedScene

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
#	var direccio = global_position.direction_to(get_global_mouse_position())
	look_at(get_global_mouse_position())
	pass

func dispara():
	var nova_bala = bala.instance()
	nova_bala.global_position = $Punta.global_position
