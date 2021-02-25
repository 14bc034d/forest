extends KinematicBody2D

func _physics_process(delta):
	rotation += get_local_mouse_position().angle()*0.1
