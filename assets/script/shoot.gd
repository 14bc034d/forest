extends Node

var level

func shoot():
	var projectile = load("res://assets/scene/lightning_bolt.tscn")
	var lightning_bolt = projectile.instance()
	self.add_child(lightning_bolt)

func _ready():
	pass

func _process(delta):
	if(Input.is_action_pressed('mouse_left')):
		shoot()
