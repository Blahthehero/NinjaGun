extends Node2D

func _on_VisibilityNotifier2D_screen_exited():
	GlobalVariables.OnScreen = false

func _on_VisibilityNotifier2D_screen_entered():
	GlobalVariables.OnScreen = true

