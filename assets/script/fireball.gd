extends KinematicBody2D

export (int) var speed = 400

func _physics_process(delta):
	look_at(get_global_mouse_position())
