extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var Velocitat=1
var velocitat_y = Vector2.DOWN
var velocitat_x = Vector2.RIGHT

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	anima(velocitat_x)
	#print(Node2D.get_personatge_position())
	
func anima(velocitat_x):
	if velocitat_x > Vector2(0,0):
		$AnimatedSprite.play("corre")
		$AnimatedSprite.flip_h = false
	if velocitat_x < Vector2(0,0):
		$AnimatedSprite.play("corre")
		$AnimatedSprite.flip_h = true

