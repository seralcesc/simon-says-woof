extends CharacterBody2D # DOG

@onready var sprite = $AnimatedSprite2D

func _process(_delta: float):
	
	# ANIMATIONS
	if Input.is_key_pressed(KEY_W):
		sprite.play("jump")

	elif Input.is_key_pressed(KEY_S):
		sprite.play("sit")

	elif Input.is_key_pressed(KEY_A):
		sprite.play("bark")

	elif Input.is_key_pressed(KEY_D):
		sprite.play("poop")
	
	else:
		sprite.play("static")
