extends Node
var Player_Life = 1000 setget Set_Player_Life
var PlayerAlive = true
var SCROLLSPEED = 300
var OnScreen = true
var KnockBack = false

func Set_Player_Life(Player_life):
	KnockBack = true
	Player_Life -= 100
	yield(get_tree().create_timer(.1), "timeout")
	KnockBack = false


func _process(delta):
	if Player_Life <= 0: 
		PlayerAlive = false

	if Player_Life == 1000:
		PlayerAlive == true

	if OnScreen == false:
		Player_Life -= 1

	if PlayerAlive == false:
		get_tree().change_scene("res://Scenes/New Death Screen.tscn")
