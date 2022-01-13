extends TileMap

func _physics_process(delta):
	if GlobalVariables.PlayerAlive == false or GlobalVariables.PlayerWin == true:
		self.visible = false
