extends Node2D

var move = Vector2.ZERO
var look_vec = Vector2.ZERO
var speed : float = 500
var direction : Vector2 = Vector2.LEFT

func _process(delta):
	translate(direction*speed*delta)

func _on_Dagger_body_entered(body):
	if body.get_name() == 'Play':
		GlobalVariables.Player_Life -= 100
	queue_free()
