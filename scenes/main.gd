extends Node2D

func _ready():
	Global.principi_escena(0, $Personatge1/Camera2D, $Personatge1, $Personatge1/HUD/AnimatedSprite)
	$Personatge1.position = Global.lastpos
<<<<<<< Updated upstream


func _on_Area2D_body_entered(body):
	pass # Replace with function body.
=======
>>>>>>> Stashed changes
