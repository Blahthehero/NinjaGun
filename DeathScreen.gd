extends Sprite

func _physics_process(_delta):
	if GlobalVariables.PlayerAlive == false:
		self.visible = true
