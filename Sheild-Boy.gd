extends Node2D
var GRAVITY = 50
var MOVE = 5
onready var PlayPos = get_node("/root/YLP?/Player")
var canShoot = true
onready var Dagger = preload("res://Scenes/Dagger.tscn")
onready var Bullet = get_node("/root/YLP?/Ammo/Bullet")
onready var Player = get_node("/root/YLP?/Player/Play")
var ableshot = false

func _on_Area2D_area_entered(area):
	if area.get_name() == 'Bullet': 
		self.queue_free()


func _on_Area2D_body_entered(body):
	if body.get_name() == 'Play':
		GlobalVariables.Player_Life -= 100

