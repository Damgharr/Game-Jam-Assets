class_name WheelHolder
extends PinJoint2D

var _wheel : Wheel
var _vehicle : Vehicle


func init(vehicle : Vehicle):
	if get_children().is_empty():
		push_error("No Wheel found! Please attach Wheel to WheelHolder or add to as child.")
		
	_vehicle = vehicle
	_wheel = $Wheel


func get_wheel() -> Wheel:
	return _wheel
