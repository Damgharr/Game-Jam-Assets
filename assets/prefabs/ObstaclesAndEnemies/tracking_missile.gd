class_name Missile
extends RigidBody2D

var level = preload("res://assets/levels/level_1.tscn")
@onready var vehicle = get_node("../Vehicle")

@export var speed = 0.01

func _ready():
	level


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var vehiclePosition = vehicle.position
	move_and_collide(vehicle.position * speed)
	look_at(vehicle.position)


