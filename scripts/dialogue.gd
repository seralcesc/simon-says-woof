extends Control # DIALOGUE

@onready var label = $Label
@onready var dog_script = $"../dog"
@onready var ui_script = $"../CanvasLayerUI"

var current_order := ""
var waiting = false
var tiempo_limite = 2.0
var tiempo_actual = 0.0
var turno_activo = false

var orders = {
	"SIT!": "move_down", #S
	"JUMP!": "move_up", #W
	"WOOF!": "move_left", #A
	"POOP!": "move_right" #D
}

func _ready():
	randomize()
	new_order()

func _process(delta):
	if not turno_activo:
		return
	tiempo_actual -= delta
	if tiempo_actual <= 0:
		print("¡Demasiado lento!")
		turno_activo = false
		game_punishment()
		return
	if current_order != "":
		var correct_action = orders[current_order]
		if Input.is_action_just_pressed(correct_action):
			print("¡A tiempo!")
			turno_activo = false
			next_order()
		elif Input.is_anything_pressed():
			print("¡Tecla incorrecta!")
			turno_activo = false
			game_punishment()

func game_punishment():
	if dog_script:
		dog_script.play_confusion()
		
	var el_jugador_murio = false
	
	if ui_script:
		el_jugador_murio = ui_script.quitar_vida()
	if not el_jugador_murio:
		next_order()

func new_order():
	var names = orders.keys()
	current_order = names[randi() % names.size()]
	label.text = "Simon says: " + current_order
	tiempo_actual = tiempo_limite
	turno_activo = true

func next_order():
	if not is_inside_tree(): return
	$".".visible = false
	waiting = true
	await get_tree().create_timer(3.0).timeout 
	new_order()
	waiting = false
	$".".visible = true
