extends Node2D



func _on_Bullet_area_entered(area):
	if area.get_name() == 'Hit_box':
		queue_free()
