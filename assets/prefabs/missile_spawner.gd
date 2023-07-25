extends Node2D

@export var _missile_path : String = "res://assets/prefabs/obstacles/tracking_missile.tscn"
#in future @export need delete
@export var _target : Node2D

var _missile : PackedScene

#change to init(target : Node2D)
func _ready():
	_missile = load(_missile_path)

	spawn_missile()


func spawn_missile():
	var missile = _missile.instantiate()

	self.add_child(missile)
	missile.init(_target)

