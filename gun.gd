extends Node2D

const Ammo = preload("res://Scenes/Ammo.tscn")

var canShoot = true
var mouse_pos = null

func _process(delta):
	look_at(get_global_mouse_position())

func _input(event):
	if Input.is_action_just_pressed("shoot") && canShoot == true:
		canShoot = false
		shoot()
		yield(get_tree().create_timer(0.5), "timeout")
		canShoot = true

func shoot():
	var muzzle = $Muzzle
	var instance = Ammo.instance()
	mouse_pos = get_global_mouse_position()
	get_node("../../../").add_child(instance)  
	instance.global_position = muzzle.global_position
	var dir = (mouse_pos - global_position).normalized()
	instance.global_rotation = dir.angle()
	instance.direction = dir
	canShoot = false
