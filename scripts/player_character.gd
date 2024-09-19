extends CharacterBody2D

@export var speed = 80
@onready var _animation_player = $AnimatedSprite2D

func get_input():
	var input_direction = Input.get_vector("Left", "Right", "Up", "Down")
	velocity = input_direction * speed

func _physics_process(delta):
	get_input()
	move_and_slide()

func _process(_delta):
	if Input.is_action_pressed("Down"):
		_animation_player.play("walk_down")
	elif Input.is_action_pressed("Up"):
		_animation_player.play("walk_up")
	elif Input.is_action_pressed("Right"):
		_animation_player.play("walk_right")
	elif Input.is_action_pressed("Left"):
		_animation_player.play("walk_left")
	else:
		_animation_player.play("idle")
