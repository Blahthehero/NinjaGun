extends Node2D
var GRAVITY = 50
var MOVE = 5
onready var PlayPos = get_node("/root/YLP?/Player")
var canShoot = true
onready var Dagger = preload("res://Scenes/Dagger.tscn")
onready var Bullet = get_node("/root/YLP?/Ammo/Bullet")
onready var Player = get_node("/root/YLP?/Player/Play")
var ableshot = false

func shoot():
	var muzzle = $Muzzle
	var Knife = Dagger.instance()
	get_node("/root/YLP?").call_deferred("add_child",Knife) 
	Knife.global_position = muzzle.global_position
	var dir = (Player.global_position - global_position).normalized()
	Knife.global_rotation = dir.angle()
	Knife.direction = dir

func _on_Area2D_area_entered(area):
	if area.get_name() == 'Bullet': 
		self.queue_free()


func _on_Area2D_body_entered(body):
	if body.get_name() == 'Play':
		if position.x > PlayPos.position.x:
			PlayPos.position.x -= 500
		if position.x < PlayPos.position.x:
			PlayPos.position.x += 500
		
		GlobalVariables.Player_Life -= 100

func _on_Area2D2_body_entered(body):
	if body.get_name() == 'Play':
		shoot()
