extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.
	GameManager.ingame = true

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	$Label_Coins.text = (str(GameManager.money) + " shmonies")
	$Timer.text = (str(GameManager.printTimer) + " seconds left")
	Pausa()


func Pausa() -> void:
	if Input.is_action_just_pressed("Pausa"):
		get_tree().change_scene_to_file("res://Scenes/SC_PauseMenu.tscn")
		GameManager.previousSceneToPause = 1

func _on_button_oliespress_button_up() -> void:
	get_tree().change_scene_to_file("res://Scenes/SC_MaterialStore.tscn")

func _on_button_web_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/SC_PopPunkStore.tscn")
	

func _on_button_workshop_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/SC_Workshop.tscn")
