extends Node
var Player_Life = 1000
var PlayerAlive = true
var SCROLLSPEED = 300
var OnScreen = true
onready var Player = get_node("/root/YLP?/Player/Play")

func _process(delta):
	if Player_Life <= 0: 
		PlayerAlive = false

	if Player_Life == 1000:
		PlayerAlive == true

	if OnScreen == false:
		Player_Life -= 1

	if PlayerAlive == false:
		get_tree().change_scene("res://Scenes/New Death Screen.tscn")
