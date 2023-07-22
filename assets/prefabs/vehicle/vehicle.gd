class_name Vehicle
extends RigidBody2D

const MAX_SPEED = 1024
const MULTIPLIER_SPEED = 1000

@export var _speed : float = 100

var _wheels : Array = []
var _velocity : Vector2 = Vector2.ZERO


func _ready():
	for wheel in get_children():
		if wheel is PinJoint2D:
			_wheels.append(wheel.get_node("Wheel"))
	
	print(_wheels)


func _physics_process(delta):

	self.apply_torque_impulse(clampf(_velocity.x * delta * MAX_SPEED * MULTIPLIER_SPEED, -MAX_SPEED, MAX_SPEED))

	for wheel in _wheels:
		wheel.apply_torque_impulse(clampf(_velocity.y * _speed * delta * MULTIPLIER_SPEED, -MAX_SPEED, MAX_SPEED))


func apply_velocity(velocity : Vector2) -> void:
	_velocity = velocity
