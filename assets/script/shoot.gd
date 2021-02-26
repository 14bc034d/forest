extends Node

var has_bolt

func shoot():
	has_bolt = false
	for _i in self.get_children():
		if("lightning_bolt" in _i.name): has_bolt = true
	if(!has_bolt):
		var projectile = load("res://assets/scene/lightning_bolt.tscn")
		var lightning_bolt = projectile.instance()
		self.add_child(lightning_bolt)

func _ready():
	pass

func _process(delta):
	if(Input.is_action_pressed('mouse_left')):
		shoot()
		var t = Timer.new()
		t.set_wait_time(5)
		t.set_one_shot(true)
		self.add_child(t)
		t.start()
		yield(t, "timeout")
