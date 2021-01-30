extends KinematicBody2D

var speed = 10

func get_input():
	if Input.is_action_pressed('right'):
		position.x += speed
	if Input.is_action_pressed('left'):
		position.x -= speed
	if Input.is_action_pressed('down'):
		position.y += speed
	if Input.is_action_pressed('up'):
		position.y -= speed

func _physics_process(delta):
	get_input()
