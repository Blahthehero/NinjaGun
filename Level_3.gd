extends Node2D

func _process(delta):
	if get_node("Player").position.y > 1300:
		GlobalVariables.PlayerAlive = false
	
	if GlobalVariables.PlayerAlive == false: 
		get_tree().change_scene("res://Scenes/New Death Screen.tscn")
