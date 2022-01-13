extends Node2D

func _physics_process(_delta):
	if GlobalVariables.PlayerAlive == false:
		self.visible = false
