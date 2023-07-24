class_name LevelManager
extends Service

const GAME_LEVELS = {
	"W1_LVL1": "res://assets/levels/level_1.tscn",
}


#====================================#
#									 #
#									 #
#			NOT READY YET			 #
#									 #
#									 #
#====================================#
# func load_level(next_scene : String):
# 	var load_path : String

# 	if GAME_LEVELS.has(next_scene):
# 		load_path = GAME_LEVELS[next_scene]
# 	else:
# 		load_path = next_scene
	
# 	var loader_next_scene
# 	if ResourceLoader.exists(load_path):
# 		loader_next_scene = ResourceLoader.load_threaded_request(load_path)
# 	else:
# 		push_error("Attempting to load non-existent file!")
	
# 	while true:
# 		var load_progress = []
# 		var load_status = ResourceLoader.load_threaded_get_status(load_path, load_progress)

# 		match load_status:
# 			0:
# 				push_error("Cannot load, resourse is invalid.")
# 				return
# 			1:
# 				pass
# 			2:
# 				push_error("Loading failed!")
# 				return
# 			3:
# 				var next_scene_instance = ResourceLoader.load_threaded_get(load_path).instantiate()
# 				next_scene_instance.init()
# 				return
