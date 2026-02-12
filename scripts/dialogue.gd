extends Control #DIALOGUE

@onready var label = $Label
@onready var dog_script = $"../dog"
@onready var ui_script = $"../CanvasLayerUI"

var current_order := ""
var waiting = false
var time_limit = 2.0
var current_time = 0.0
var turn_active = false

var orders = {
	"SIT!": "move_down",
	"JUMP!": "move_up",
	"WOOF!": "move_left",
	"POOP!": "move_right"
}

func _ready():
	randomize()
	new_order()

func _process(delta):
	if not turn_active:
		return
	var correct_action = orders[current_order]
	if Input.is_action_pressed(correct_action):
		print("points +1")
		next_order()
	elif Input.is_anything_pressed():
		print("points -1")
		next_order()

func new_order():
	var names = orders.keys()
	current_order = names[randi() % names.size()]
	label.text = "Simon says: " + current_order
	current_time = time_limit
	turn_active = true

func next_order():
	if not is_inside_tree(): return
	$".".visible = false
	waiting = true
	await get_tree().create_timer(3.0).timeout 
	new_order()
	waiting = false
	$".".visible = true
