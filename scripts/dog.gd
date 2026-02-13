extends CharacterBody2D # DOG

@onready var sprite = $AnimatedSprite2D
@onready var woof_sound = $woof
@onready var pop_sound = $pop
@onready var boing_sound = $boing

var is_busy: bool = false

func _process(_delta: float):
	# ANIMATIONS
	if Input.is_action_just_pressed("move_up"):
		play_anim("jump",boing_sound)
	elif Input.is_action_just_pressed("move_down"):
		play_anim("sit")
	elif Input.is_action_just_pressed("move_left"):
		play_anim("bark",woof_sound)
	elif Input.is_action_just_pressed("move_right"):
		play_anim("poop",pop_sound)
	elif not sprite.is_playing():
		sprite.play("static")

func play_anim(anim_name: String, sound_node: AudioStreamPlayer2D = null):
	is_busy = true
	sprite.play(anim_name)
	if sound_node:
		sound_node.play()

func _on_animation_finished():
	is_busy = false
