extends Area2D
var speed = 750


func _physics_process(delta):
	translate(speed*delta)
