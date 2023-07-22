class_name GameCamera
extends Camera2D

@export var _target : Node
@export var target_offset : Vector2


func _process(delta):
	self.position = _target.position + target_offset