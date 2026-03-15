extends Node2D
#QUEDA HACER QUE EL TEMPORIZADOR SE PARE SI ENTRAS EN PAUSA.

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_button_pressed() -> void:
	if (GameManager.previousSceneToPause == 1): #1 es el desktop
		get_tree().change_scene_to_file("res://Scenes/SC_Desktop.tscn")
	if (GameManager.previousSceneToPause == 2): #2 es la tienda de materiales
		get_tree().change_scene_to_file("res://Scenes/SC_MaterialStore.tscn")
