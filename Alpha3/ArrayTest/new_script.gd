@tool
extends Node2D

@export var a:Array[NodePath]
@export_node_path(CanvasModulate) var b

var _c

#func _get_property_list():
#	return [{"name":"ccc","type":TYPE_ARRAY,"usage":7+PROPERTY_USAGE_ARRAY}]
func _get_property_list():
	return [
		{"name":"Base Character Setting","type":TYPE_NIL,"usage":PROPERTY_USAGE_CATEGORY|PROPERTY_USAGE_SCRIPT_VARIABLE},
		{"name":"ccc","type":TYPE_ARRAY,"hint":PROPERTY_HINT_ARRAY_TYPE,"hint_string":"1","usage":PROPERTY_USAGE_DEFAULT}
	]
func _get(property):
	if property == "ccc":
		return _c
	return null
func _set(property, value):
	if property == "ccc":
		_c = value
		return true
	return false

func _ready():
	Time
