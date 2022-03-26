@tool
extends Node

@export_node_path(AnimationPlayer) var b
var a
	
func _get_property_list():
	return [
		{"name":"Test", "type":TYPE_NIL, "usage":PROPERTY_USAGE_CATEGORY},
		{"name":"_a", "type":TYPE_ARRAY,"hint":PROPERTY_HINT_TYPE_STRING,"hint_string":"%s:%s/%s:%s" % [TYPE_ARRAY,TYPE_NODE_PATH,PROPERTY_HINT_NODE_PATH_VALID_TYPES,"AnimationPlayer"], "usage":PROPERTY_USAGE_SCRIPT_VARIABLE|PROPERTY_USAGE_DEFAULT}
	]
func _set(property, value):
	if property == "_a":
		a = value
		return true
	return false
func _get(property):
	if property == "_a":
		return a
	return null

func _ready():
	var list = get_property_list()
	for d in list:
		if d["name"] == "b":
			print(d)
