extends Node2D

func _physics_process(delta):
	if GlobalVariables.PlayerAlive == false:
		$DeathScreen.visible = true
	else:
		$WINSCREEN.visible = true

func _on_Button_pressed():
	GlobalVariables.Player_Life = 1000
	get_tree().change_scene("res://Scenes/YLP.tscn")	
	print("OI! Stop pressing me!")
