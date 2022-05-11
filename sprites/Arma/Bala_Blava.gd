extends Area2D


var velocitat = Vector2(100, 0)


func _physics_process(delta):
	position += velocitat * delta


func _on_Bala_body_entered(body):
#	body.queue_free()
	queue_free()
