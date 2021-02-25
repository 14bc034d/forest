extends Node

var arrow = load("res://assets/textures/cursor0.png")
var click = load("res://assets/textures/cursor1.png")


func _physics_process(delta):
	if Input.is_action_pressed('mouse_left'): Input.set_custom_mouse_cursor(click)
	else: Input.set_custom_mouse_cursor(arrow)
