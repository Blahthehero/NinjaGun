extends Sprite

func _physics_process(_delta):
	if GlobalVariables.PlayerWin == true:
		self.visible = true
