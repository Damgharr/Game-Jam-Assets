class_name Vehicle
extends RigidBody2D

const MAX_SPEED = 512
const MULTIPLIER_SPEED = 1024

@export var _speed : float = 100

var _wheels : Array = []
var _velocity : Vector2 = Vector2.ZERO


#change to init()
func _ready():
	for wheel_holder in get_children():
		if wheel_holder is WheelHolder:
			wheel_holder.init(self)
			_wheels.append(wheel_holder.get_wheel())
	
	print(_wheels)


func _physics_process(delta):

	self.apply_torque_impulse(_velocity.x * delta * MULTIPLIER_SPEED * 100)

	for wheel in _wheels:
		wheel.apply_torque_impulse(clampf(_velocity.y * _speed * delta * MULTIPLIER_SPEED, -MAX_SPEED, MAX_SPEED))


func apply_velocity(velocity : Vector2) -> void:
	_velocity = velocity
