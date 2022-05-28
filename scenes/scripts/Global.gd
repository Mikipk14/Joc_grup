extends Node

var Jugador : KinematicBody2D
var lastpos = Vector2(30,230)

var vida = 100
var limit_left = -50
var limit_top = -50
var limit_right = 400
var limit_bottom = 385

func principi_escena(n_escena, camera:Camera2D, personatge:KinematicBody2D, hp:AnimatedSprite):
	match n_escena:
		0:
			limit_left = 3.5
			limit_top = 0
			limit_right = 1024
			limit_bottom = 600
		1:
			limit_left = -50
			limit_top = -50
			limit_right = 400
			limit_bottom = 385
		2:
			limit_left = -50
			limit_top = -50
			limit_right = 680
			limit_bottom = 500
	
	camera.limit_left = limit_left
	camera.limit_top = limit_top
	camera.limit_right = limit_right
	camera.limit_bottom = limit_bottom
	update_hp(vida, hp)


func perd_vida(hp:AnimatedSprite):
	vida -= 25
	if vida == 0:
		get_tree().change_scene("res://scenes/GameOver.tscn")
	update_hp(vida, hp)
	
func update_hp(vida, hp:AnimatedSprite):
	if vida <= 0:
		hp.frame = 4
	elif vida <= 25:
		hp.frame = 3
	elif vida <= 50:
		hp.frame = 2
	elif vida <= 75:
		hp.frame = 1
	else:
		hp.frame = 0
