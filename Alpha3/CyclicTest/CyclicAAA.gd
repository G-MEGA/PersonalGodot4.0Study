extends Node
class_name CyclicAAA

var bbb:CyclicBBB
var array_bbb:Array[CyclicBBB]

func _ready():
	bbb.aaa
	array_bbb[0].aaa
