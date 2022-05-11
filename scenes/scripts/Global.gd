extends Node

var lastpos = Vector2(30,230)

var limit_left = -50
var limit_top = -50
var limit_right = 400
var limit_bottom = 385

func principi_escena(n_escena, camera:Camera2D, personatge:KinematicBody2D):
	match n_escena:
		0:
			limit_left = 10
			limit_top = 0
			limit_right = 1024
			limit_bottom = 600
		1:
			limit_left = -50
			limit_top = -50
			limit_right = 400
			limit_bottom = 375
	
	camera.limit_left = limit_left
	camera.limit_top = limit_top
	camera.limit_right = limit_right
	camera.limit_bottom = limit_bottom
