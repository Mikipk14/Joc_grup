extends Node2D

func _ready():
	Global.principi_escena(0, $Personatge1/Camera2D, $Personatge1, $Personatge1/HUD/AnimatedSprite)
	$Personatge1.position = Global.lastpos

#func limits(n_scene):
#	Global.principi_escena(2, $Personatge1/Camera2D, $Personatge1, $Personatge1/HUD/AnimatedSprite)


