extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_bt_new_game_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/SC_Desktop.tscn")
	
	

func _on_bt_options_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/SC_OptionsMenu.tscn")
	
	

func _on_bt_quit_game_pressed() -> void:
	get_tree().quit()
