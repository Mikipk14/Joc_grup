extends KinematicBody2D

var velocitat = Vector2(100,-100)
var direccio = Vector2.ZERO
var moviment := Vector2.ZERO

func _ready():
	Global.Jugador = self
	
func _process(delta):
	print(global_position)
	direccio = Vector2.ZERO
	if Input.is_action_just_pressed("ui_home"):
		vida()
	if Input.is_action_pressed("dreta"):
		direccio += Vector2.RIGHT
	if Input.is_action_pressed("esquerra"):
		direccio += Vector2.LEFT
	if Input.is_action_pressed("baix"):
		direccio += Vector2.UP

	if Input.is_action_pressed("dalt"):
		direccio += Vector2.DOWN
	moviment = move_and_slide(direccio.normalized() * velocitat)
	anima(moviment)
	
func anima(moviment:Vector2):
	if moviment.x > 0:
		$AnimatedSprite.play("camina costat")
		$AnimatedSprite.flip_h = true
	if moviment.x < 0:
		$AnimatedSprite.play("camina costat")
		$AnimatedSprite.flip_h = false
	if moviment.y < 0:
		$AnimatedSprite.play("camina esquena")
	if moviment.y > 0:
		$AnimatedSprite.play("camina cara")
	if moviment.x == 0 and moviment.y == 0:
		$AnimatedSprite.play("cara")


func _on_ports_casa_gran_body_entered(body):
	Global.lastpos = global_position + Vector2(-13, 0)
	get_tree().change_scene("res://scenes/Cases/escena_Casa.tscn")


func _on_Area2D_body_entered(body):
	print(body)
	Global.lastpos = global_position + Vector2(-10, 20)
	get_tree().change_scene("res://scenes/Cases/escena_Casa2.tscn")


func _on_casa3_body_entered(body):
	Global.lastpos =  Vector2(272, 350)
	get_tree().change_scene("res://scenes/Cases/escena_Casa3.tscn")
	
func vida():
	Global.perd_vida($HUD/AnimatedSprite)

func _on_casa7_body_entered(body):
	#Node2D.limits(2)
	Global.lastpos = global_position + Vector2(-10, 20)
	get_tree().change_scene("res://scenes/Cases/Copia_escena_Casa2.tscn")

func _on_Area2D_personatge_body_entered(body):
	if body.name == "KinematicBody2D" :
		Global.perd_vida($HUD/AnimatedSprite)
