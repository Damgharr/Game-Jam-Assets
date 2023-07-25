class_name Missile
extends Area2D

@export var _speed := 500.0
@export var _drag_factor : float = 1

var _target : Node2D

var _current_velocity = Vector2.ZERO


func init(target : Vehicle):
	_target = target

	_current_velocity = _speed * Vector2.RIGHT.rotated(rotation)


func _physics_process(delta):
	var direction := Vector2.RIGHT.rotated(rotation).normalized()
	direction = global_position.direction_to(_target.global_position)

	var desired_velocity := direction * _speed
	var change = (desired_velocity - _current_velocity) * _drag_factor * delta

	_current_velocity += change

	position += _current_velocity * delta
	look_at(global_position + _current_velocity)
	print(desired_velocity)
