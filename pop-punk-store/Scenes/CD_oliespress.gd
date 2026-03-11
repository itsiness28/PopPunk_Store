extends Node2D
var chainAvailable = 5
var starCharmAvailable = 5
var chainSelected = 0 
var starCharmSelected = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	$Label3.text = (str(chainSelected) + "/" + str(chainAvailable))



func _on_button_3_pressed() -> void:
	chainSelected = chainSelected + 1
	

func _on_button_4_pressed() -> void:
	chainSelected = chainSelected - 1
