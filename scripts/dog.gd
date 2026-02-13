extends CharacterBody2D # DOG

@onready var sprite = $AnimatedSprite2D
@onready var woof_sound = $woof
@onready var pop_sound = $pop
@onready var boing_sound = $boing

var is_busy: bool = false

func _process(_delta: float):

	# ANIMATIONS
	if Input.is_action_just_pressed("move_up"):
		boing_sound.play()
		play_anim("jump")
		
	elif Input.is_action_just_pressed("move_down"):
		play_anim("sit")
		
	elif Input.is_action_just_pressed("move_left"):
		woof_sound.play()
		play_anim("bark")
		
	elif Input.is_action_just_pressed("move_right"):
		pop_sound.play()
		play_anim("poop")
		
	else:
		if not sprite.is_playing() or sprite.animation == "static":
			sprite.play("static")

func play_anim(anim_name: String):
	sprite.play(anim_name)
