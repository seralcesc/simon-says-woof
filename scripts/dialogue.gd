extends Control # DIALOGUE

@onready var label = $Label

var current_order := ""
var waiting = false

var orders = {
	"SIT!": "move_down",   # S
	"JUMP!": "move_up",    # W
	"WOOF!": "move_left",  # A
	"POOP!": "move_right"  # D
}

func _ready():
	randomize()
	new_order()

func _process(_delta):
	if waiting or current_order == "":
		return
	var correct_action = orders[current_order]
	if Input.is_action_just_pressed(correct_action):
		print("points +1")
		next_order()
	elif Input.is_anything_pressed():
		print("points -1")
		next_order()

func new_order():
	var names = orders.keys()
	current_order = names[randi() % names.size()]
	label.text = "Simon says: " + current_order

func next_order():
	$".".visible = false
	waiting = true
	await get_tree().create_timer(3.0).timeout 
	new_order()
	waiting = false
	$".".visible = true
