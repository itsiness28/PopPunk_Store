extends Node
var totalTime = 60
var timer = 0
var printTimer 
var currentLevel = 1


# Called when the node enters the scene tree for the first time.
func _ready() -> void: #On Start
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void: #Update
	timer = timer + (delta)
	printTimer = str(totalTime - int(timer))
