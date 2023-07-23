extends Node


var _score_time = 0


func _process(delta):
	_score_time += delta

	var mils = fmod(_score_time,1)*1000
	var secs = fmod(_score_time, 60)
	var mins = fmod(_score_time, 60*60) / 60

	var time_passed : String = "%02d : %02d : %03d" % [mins,secs,mils]
	get_node("UI/Time Counter/Panel/MarginContainer/VBoxContainer/Label").text = time_passed
