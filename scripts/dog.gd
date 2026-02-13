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
		if velocity.length() > 15:
			sprite.play("walk")
		else:
			sprite.play("static")

	if velocity.x > 10:
		sprite.flip_h = false
	elif velocity.x < -10:
		sprite.flip_h = true

	move_and_slide()

func play_confusion():
	is_confused = true
	velocity = Vector2.ZERO
	sprite.play("dead")
	
	await get_tree().create_timer(1.0).timeout
	
	is_confused = false
