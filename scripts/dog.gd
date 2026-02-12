extends CharacterBody2D # DOG

@onready var sprite = $AnimatedSprite2D

func _process(_delta: float):
	
	# ANIMATIONS
	if Input.is_action_pressed("move_up"):
		sprite.play("jump")
	elif Input.is_action_pressed("move_down"):
		sprite.play("sit")
	elif Input.is_action_pressed("move_left"):
		sprite.play("bark")
	elif Input.is_action_pressed("move_right"):
		sprite.play("poop")
	else:
		sprite.play("static")
