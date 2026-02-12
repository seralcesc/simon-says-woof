extends CharacterBody2D # PERSON

@onready var dialogue = $"../dialogue"
@onready var sprite = $AnimatedSprite2D

var dialogue_was_visible := true
var animation_played := false

func _process(_delta):
	if dialogue_was_visible and dialogue.visible:
		play_talk_once()
	else:
		sprite.play("default")

	if dialogue.visible:
		animation_played = false

	dialogue_was_visible = dialogue.visible

func play_talk_once():
	if animation_played:
		return

	animation_played = true
	sprite.play("talk")
