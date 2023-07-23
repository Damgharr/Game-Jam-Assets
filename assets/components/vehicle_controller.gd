@icon("res://assets/components/sprites/spr_inputcontroller_component.png")
class_name VehicleController
extends Node2D

@export var _vehicle : Vehicle

var is_active : bool = true


func _input(_event):
	if is_active == true:
		var input_velocity : Vector2 = _get_input_velocity()

		_vehicle.apply_velocity(input_velocity)


func _get_input_velocity() -> Vector2:
	var input_velocity = Vector2.ZERO
	input_velocity.x = Input.get_axis("player_left", "player_right")
	input_velocity.y = Input.get_axis("player_down", "player_up")
	return input_velocity
