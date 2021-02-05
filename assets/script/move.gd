extends KinematicBody2D

export (int) var speed = 300

var velocity = Vector2()

func get_input():
	velocity = Vector2()
	if Input.is_action_pressed('right'):
		velocity.x += 1
		#$Sprite.animation("walk")
	if Input.is_action_pressed('left'):
		velocity.x -= 1
		#$Sprite.animation("walk")
	if Input.is_action_pressed('down'):
		velocity.y += 1
		#$Sprite.animation("walk")
	if Input.is_action_pressed('up'):
		velocity.y -= 1
		#$Sprite.animation("walk")
	velocity = velocity.normalized() * speed
	#$Sprite.animation("default")

func _physics_process(delta):
	get_input()
	velocity = move_and_slide(velocity)
