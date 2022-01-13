extends Node2D

const Ammo = preload("res://Scenes/Ammo.tscn")

var canShoot = true

func _input(event):
	if Input.is_action_just_pressed("shoot") && canShoot == true:
		canShoot = false
		shoot()
		yield(get_tree().create_timer(0.5), "timeout")
		canShoot = true

func shoot():
	var muzzle = $Muzzle
	var instance = Ammo.instance()
	get_node("../../../").add_child(instance)  
	instance.global_position = muzzle.global_position
	canShoot = false
