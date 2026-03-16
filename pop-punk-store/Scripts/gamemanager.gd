extends Node

var currentLevel = 1 #VAR GENERAL. para las variaciones entre niveles. 
var money = 5 #VAR GENERAL. start ammount, usar para registrar todo
var ingame = false
var entersAfterFirst = false #VAR GENERAL. esta variable hace el reseteado de variables al entrar en desktop post-level summary. Es basicamente algo que controla si vuelves a esta escena/no es la primera vez que entras. Usar como el ready, activarla cuando queramos que algo triggeree el reseteo (generalmente acabar el nivel) y meter ahí todo lo referente a empezar de nuevo el ciclo de nivel. 
var previousSceneToPause #VAR GENERAL. unicamente para volver a la escena correcta si paras el juego. Queda pendiente mirar como parar el temporizador al entrar en pausa (igual con una var privada de la escena que guarde el valor y al cerrar que reasigne? que en el update siempre se iguale a esa var que registró el num? segunda puede ser la respuesta, para que no se triggeree el level sumary.

#region Timer and time vars
var totalTime = 60
var timer = 0
var printTimer 
#endregion 


#region Inventarios, stocks y todo referente a modificaciones al respecto.
var preciosTienda = [1.5, 1, 1.25] #ir añadiendo según se desbloqueen objetos. luego, para conseguir el que quieras, mira la tabla de ref de notion con una lista y los id (segundo numero, este array es el "0" del primer numero) y es (array[0]) para lo que quieras. Si quieres el precio de la cadena haces (preciosTienda[0)]
var descuentoActualTienda = 1.0
var stocksCompra = [4,4,5] #usar mismo id que en precios
var stockInventario = [0, 0, 0] #aquí es el stock que tiene ahora mismo de cada artículo, disponible para fabricar. Se hace con var bool de "pedido completado?" + seleccionado en tienda. NO USAR EN SCRIPT DE TIENDA, SOLO AL FINAL.
var objetosVendibles = ["CollarEstrellaPlateado", "CollarLunaPlateado"] #Ir añadiendo todos los que se vayan diseñando, así, decir objetoAVender = (objetosVendibles[0]) (indicaría que es el collar de estrella)
var stockprop_1_1 = 0 #empiezas con cero construidos. 1_1 hace referencia a Venta(0/1)_IDdeObjeto
var clicksConst_1_1 = 10 #clicks necesarios de base para construir collar básico
var objetoAVender #usar junto al array de objetosVendibles[]
var precioBajo #Hacer bloque de código en tienda diciendo que si "objeto a vender" es "collar estrella" (if (objetoAVender == (objetosVendibles[0]))) precio bajo es, precio medio es, precio alto es y en el mismo la venta y así con todos. Se asigna el objeto a vender al hacer click en lo que quieres vender. 
var precioMedio
var precioAlto

#endregion

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
	
	#Pausa de nivel



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
	
