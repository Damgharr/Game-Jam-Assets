@icon("res://assets/components/sprites/spr_inputcontroller_component.png")
class_name VehicleController
extends Node2D

@export var _vehicle : Vehicle


func _input(_event):
	var input_velocity : Vector2 = _get_input_velocity()

	_vehicle.apply_velocity(input_velocity)


func _get_input_velocity() -> Vector2:
	var input_velocity = Vector2.ZERO
	input_velocity.x = Input.get_axis("player_left", "player_right")
	return input_velocity
