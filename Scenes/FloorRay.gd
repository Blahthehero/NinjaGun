extends RayCast2D

var OnFloor = false

func _process(delta):
	if is_colliding():
		OnFloor = true
	else:
		OnFloor = false
