extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var velocitat_max = 50
var direccio = Vector2.RIGHT

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	direccio = global_position.direction_to(Global.Jugador.global_position)
	var moviment = move_and_slide(velocitat_max * direccio)
	anima(moviment)
	
	
func anima(moviment):
<<<<<<< Updated upstream
=======
	if not viu:
		return
>>>>>>> Stashed changes
	if moviment.x > 0:
		$AnimatedSprite.play("corre")
		$AnimatedSprite.flip_h = false
	if moviment.x < 0:
		$AnimatedSprite.play("corre")
		$AnimatedSprite.flip_h = true

