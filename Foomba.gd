extends Node2D
var GRAVITY = 50
var MOVE = 5
onready var PlayPos = get_node("/root/YLP?/Player")
var canShoot = true
const Dagger = preload("res://Scenes/Dagger.tscn")
onready var Bullet = get_node("/root/YLP?/Ammo/Bullet")
onready var Player = get_node("/root/YLP?/Player/Play")
var ableshot = false

func shoot():
	var muzzle = $Muzzle
	var instance = Dagger.instance()
	get_node("/root/YLP?").add_child(instance) 
	instance.global_position = muzzle.global_position
	canShoot = false

func _on_Area2D_area_entered(area):
	if area.get_name() == 'Bullet': 
		queue_free()


func _on_Area2D_body_entered(body):
	if body.get_name() == 'Play':
		if position.x > PlayPos.position.x:
			PlayPos.position.x -= 500
		if position.x < PlayPos.position.x:
			PlayPos.position.x += 500
		
		GlobalVariables.Player_Life -= 100

func _on_Area2D2_body_entered(body):
	if body.get_name() == 'Play':
		ableshot == true

func _process(_delta):
	if ableshot == true:
		shoot()
		canShoot = false
		print("ajsdvjbdjvb")
	else:
			yield(get_tree().create_timer(2), "timeout")
			canShoot = true
