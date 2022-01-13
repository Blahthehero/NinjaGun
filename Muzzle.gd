extends Position2D

const AmmoResource = preload("res://Ammo.tscn")

func _physics_process(delta):
	var GrabbedAmmo = AmmoResource.instance()

	if Input.is_action_just_pressed("shoot"):
		instance(AmmoResource)

