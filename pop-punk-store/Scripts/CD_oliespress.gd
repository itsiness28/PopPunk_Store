extends Node2D
var elementosAComprar = [0,0,0]

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	selectionLimit()
	$Label3.text = (str(elementosAComprar[0]) + "/" + str(GameManager.stocksCompra[0]))
	$Timer.text = ((GameManager.printTimer) + " seconds left")
	Pausa()

func Pausa() -> void:
	if Input.is_action_just_pressed("Pausa"):
		get_tree().change_scene_to_file("res://Scenes/SC_PauseMenu.tscn")
		GameManager.previousSceneToPause = 2

func _on_button_3_pressed() -> void:
	elementosAComprar[0] = elementosAComprar[0] + 1
	

func _on_button_4_pressed() -> void:
	elementosAComprar[0] = elementosAComprar[0] - 1

func selectionLimit() -> void:
	if elementosAComprar[0] >= GameManager.stocksCompra[0]:
		elementosAComprar[0] = GameManager.stocksCompra[0]
	if elementosAComprar[0] < 0:
		elementosAComprar[0] = 0;
	if ((elementosAComprar[0]) * (GameManager.preciosTienda[0]) > GameManager.money):
		elementosAComprar[0] = elementosAComprar[0] - 1
		
		
func _on_button_5_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/SC_Desktop.tscn")
