extends Sprite

func _ready():
	Sprite.visible = false
	if GlobalVariables.PlayerAlive == false:
		Sprite.visible = true
