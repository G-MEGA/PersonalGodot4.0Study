extends Skeleton2D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
#	execute_modifications(delta,0)
	get_modification_stack().get_modification(0).fetch_physical_bones()
	if Input.is_action_just_pressed("mouse0"):
#		get_modification_stack().enabled = true;
#		get_modification_stack().enable_all_modifications(true)
		get_modification_stack().get_modification(0).start_simulation()
		pass
	if Input.is_action_just_pressed("mouse1"):
#		get_modification_stack().enabled = false;
#		get_modification_stack().enable_all_modifications(false)
		get_modification_stack().get_modification(0).stop_simulation()
		pass
