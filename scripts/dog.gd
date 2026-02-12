extends CharacterBody2D # DOG

const SPEED = 180.0
const ACCELERATION = 1000.0
const FRICTION = 1400.0

@onready var sprite = $AnimatedSprite2D

func _physics_process(delta: float) -> void:
	var input_direction = Vector2.ZERO
	
	# MOTION
	if Input.is_key_pressed(KEY_LEFT):
		input_direction.x -= 1
	if Input.is_key_pressed(KEY_RIGHT):
		input_direction.x += 1
	if Input.is_key_pressed(KEY_UP):
		input_direction.y -= 1
	if Input.is_key_pressed(KEY_DOWN):
		input_direction.y += 1

	input_direction = input_direction.normalized()

	var target_velocity = input_direction * SPEED

	if input_direction != Vector2.ZERO:
		velocity = velocity.move_toward(target_velocity, ACCELERATION * delta)
	else:
		velocity = velocity.move_toward(Vector2.ZERO, FRICTION * delta)

	# ANIMATIONS
	if Input.is_key_pressed(KEY_W):
		velocity = Vector2.ZERO
		sprite.play("jump")

	elif Input.is_key_pressed(KEY_S):
		velocity = Vector2.ZERO
		sprite.play("sit")

	elif Input.is_key_pressed(KEY_A):
		velocity = Vector2.ZERO
		sprite.play("bark")

	elif Input.is_key_pressed(KEY_D):
		velocity = Vector2.ZERO
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
