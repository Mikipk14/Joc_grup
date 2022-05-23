extends Area2D


var velocitat = Vector2(100, 0)
var mal = 20

func _physics_process(delta):
	position += velocitat * delta


func _on_Bala_body_entered(body):
#	body.queue_free()
	if body.has_method('hit'):
		body.hit(mal)
	queue_free()
