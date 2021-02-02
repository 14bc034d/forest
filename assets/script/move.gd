extends KinematicBody2D

var speed = 10

var wasd_list = {"right":""}

func run_script(input):
	var script = GDScript.new()
	script.set_source_code("func eval():" + input)
	script.reload()

	#var obj = Reference.new()
	var obj = Node.new() #So we can call get_node
	obj.set_script(script)
	add_child(obj)
	var ret_val = obj.eval()
	remove_child(obj)


func go(wasd, anim):
	if Input.is_action_pressed(wasd):
		
		$Sprite.play(anim)
	else: $Sprite.play("default")

func control():
	go("right", "walk")
	go("left", "walk")
	go("up", "walk")
	go("down", "walk")

func _physics_process(delta):
	control()
