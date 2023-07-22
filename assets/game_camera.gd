class_name GameCamera
extends Camera2D

@export var _target : Node


func _process(delta):
	self.position = _target.position