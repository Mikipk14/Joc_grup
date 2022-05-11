extends Sprite


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var speed = 750
var cont = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	anima1()
	if Input.is_action_pressed("Disparar"):
		anima1()
		
func anima1():
	if Input.is_action_pressed("Disparar"):
		$AnimatedSprite1.play("Disparar")
		$AnimatedSprite1.connect("animation_finished", self, "on_disparar_animation_finished")
	
func on_disparar_animation_finished():
	$AnimatedSprite1.frame = 0
	$AnimatedSprite1.playing = false
