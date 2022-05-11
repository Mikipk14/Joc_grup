extends Node2D

func _ready():
	Global.principi_escena(1, $Personatge1/Camera2D, $Personatge1)


func _on_Area2D_body_entered(body):
	get_tree().change_scene("res://scenes/main.tscn")
	
