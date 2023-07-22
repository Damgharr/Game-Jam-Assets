class_name Wheel
extends RigidBody2D

@onready var _anim_player = $AnimationPlayer


func _physics_process(delta):
	var velocity = self.angular_velocity
	
	if velocity > 10:
		_anim_player.play("moving")
	elif velocity < -10:
		_anim_player.play_backwards("moving")
	else:
		_anim_player.play("idle")
