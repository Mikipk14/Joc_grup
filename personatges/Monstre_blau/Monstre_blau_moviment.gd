extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var Velocitat=1
var velocitat_y = Vector2.DOWN
var velocitat_x = Vector2.RIGHT
var vida = 300 setget canvia_vida
var viu = true

func canvia_vida(nova_vida):
	vida = nova_vida
	$BarraVida.value = vida
	if vida <= 75:
		viu = false
		print('MORT!---------------------')
		$AnimatedSprite.play("mor")
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#anima(velocitat_x)
	pass
	#print(Node2D.get_personatge_position())

	var direccio = global_position.direction_to(Global.Jugador.global_position)
	var moviment = move_and_slide(20 * direccio)
	anima(moviment)

	anima(velocitat_x)
	
	
func anima(velocitat_x):
	if not viu:
		return
	if velocitat_x > Vector2(0,0):
		$AnimatedSprite.play("corre")
		$AnimatedSprite.flip_h = false
	if velocitat_x < Vector2(0,0):
		$AnimatedSprite.play("corre")
		$AnimatedSprite.flip_h = true

func hit(mal):
	self.vida -= mal


func _on_AnimatedSprite_animation_finished():
	if $AnimatedSprite.animation == 'mor':
		queue_free()
	
	
	
