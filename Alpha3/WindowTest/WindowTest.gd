extends Node2D
var sub_window_index:int

@export var window:PackedScene
var window_node

# Called when the node enters the scene tree for the first time.
func _ready():
	
	print(get_viewport().gui_embed_subwindows)
	get_viewport().gui_embed_subwindows = false
	print(get_viewport().gui_embed_subwindows)
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if Input.is_action_just_pressed("click"):
		print("ok")
		window_node = window.instantiate()
		get_parent().add_child(window_node)
	pass
