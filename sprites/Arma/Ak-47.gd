extends Sprite


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var speed = 750
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	anima1()
	if Input.is_action_pressed("Disparar"):
		anima1()

func _physics_process(delta):
	position += transform.x * speed * delta
		
	
func anima1():
	$AnimatedSprite1.play("Disparar")
