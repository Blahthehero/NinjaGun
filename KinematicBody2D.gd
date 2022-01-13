extends KinematicBody2D

var UP = Vector2(0,-1)
var GRAVITY = 50
var SPEED = 500
var MAXFALLSPEED = 600
var JUMP = 900
var motion = Vector2()
var SCROLLSPEED = 300
signal PlayerMX
var  PYposition = position.y

func _physics_process(delta):
	motion.y += GRAVITY
	if motion.y > MAXFALLSPEED:
		motion.y = MAXFALLSPEED

	if Input.is_action_pressed("ui_right"):
		motion.x = SPEED 
		$Sprite.set_flip_h(false)
	elif Input.is_action_pressed("ui_left"):
		motion.x = -SPEED
		$Sprite.set_flip_h(true)
	else:
		motion.x = SCROLLSPEED
		$AnimationPlayer.play("idle")

	if is_on_floor():
		if Input.is_action_just_pressed("ui_up"):
			motion.y = -JUMP
			

	motion = move_and_slide(motion, Vector2.UP)

func _process(delta):
	emit_signal("PlayerMX",PYposition,delta)
