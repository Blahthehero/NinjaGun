extends Node2D

func _physics_process(delta):
	if $LeftRay1.is_colliding() && $LeftRay2.is_colliding():
		get_parent().left_detecting = true
	elif !$LeftRay1.is_colliding() && !$LeftRay2.is_colliding():
		get_parent().left_detecting = false
