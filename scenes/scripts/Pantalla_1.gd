extends Node2D

func _ready():
	Global.principi_escena(1, $Personatge1/Camera2D, $Personatge1, $Personatge1/HUD/AnimatedSprite)


func _on_Area2D_body_entered(body):
	get_tree().change_scene("res://scenes/main.tscn")
	
	
func get_personatge_position():
	return $Personatge1.position
	
