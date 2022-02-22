extends Node2D

var move = Vector2.ZERO
var look_vec = Vector2.ZERO
onready var player = get_node("/root/YLP?/Player/Play")
var speed : float = 750
var direction : Vector2 = Vector2()

func _process(delta):
	translate(direction*speed*delta)

func _on_Bullet_area_entered(area):
	if area.get_name() == 'Hit_box':
		queue_free()


func _on_Bullet_body_entered(body):
		queue_free()

func _on_VisibilityNotifier2D_screen_exited():
		queue_free()
