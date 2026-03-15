extends Node
var totalTime = 60
var timer = 0
var printTimer 
var currentLevel = 1
var entersAfterFirst = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void: #On Start
	print(currentLevel)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void: #Update
	# Solo se ejecuta cuando has pasado por primera vez por LevelSummary así que es desde segundo nivel en adelante
	VarReset()
	
	#Timer por código
	Timer(delta)

	#Final de nivel cuando acaba el tiempo
	EndLevel()
	


#FUNCIONES

func VarReset() -> void:
	if (entersAfterFirst == true) :
		print(currentLevel)
		totalTime = 60
		timer = 0
		entersAfterFirst = false

func Timer(delta) -> void:
	timer = timer + (delta)
	printTimer = str(totalTime - int(timer))

func EndLevel() -> void:
	if  int(printTimer) == 0 :
		get_tree().change_scene_to_file("res://Scenes/SC_LevelSummary.tscn")
	
