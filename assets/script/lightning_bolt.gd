extends KinematicBody2D

func _physics_process(delta):
	rotation += get_local_mouse_position().angle()
	var t = Timer.new()
	t.set_wait_time(1)
	t.set_one_shot(true)
	self.add_child(t)
	t.start()
	yield(t, "timeout")
	if(!Input.is_action_pressed('mouse_left')): self.get_parent().remove_child(self)
