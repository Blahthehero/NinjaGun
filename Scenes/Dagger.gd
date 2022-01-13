extends Node2D

var move = Vector2.ZERO
var look_vec = Vector2.ZERO
onready var player = get_node("/root/YLP?/Player/Play")
var speed = -750

func _ready():
	look_vec = player.global_position - global_position

func _physics_process(delta):

	position += transform.x * speed * delta


func _on_Dagger_body_entered(body):
	if body.get_name() == 'Play':
		GlobalVariables.Player_Life -= 100
