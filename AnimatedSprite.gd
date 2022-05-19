extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var velocitat = 100
var cont =2

# Called when the node enters the scene tree for the first time.
func _ready():
	position = Vector2(0,114)

func _process(delta):
	pass
	

func anima1():
	$Enemic_esquelet.play("caminar")
	#$Enemic_esquelet.play("morir")

func _on_Personatge_Enemic_body_entered(body):
	$Enemic_esquelet.play("pegar")
	
	
	
	
	
	
	
	
	
