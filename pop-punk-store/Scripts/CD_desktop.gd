extends Node2D
var coins = 5

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	$Label_Coins.text = (str(coins) + " shmonies")
	$Timer.text = (str(GameManager.printTimer) + " seconds left")


func _on_button_oliespress_button_up() -> void:
	get_tree().change_scene_to_file("res://Scenes/SC_MaterialStore.tscn")



func _on_button_web_pressed() -> void:
	coins = coins + 1
