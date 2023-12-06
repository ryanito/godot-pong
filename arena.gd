extends Node2D

@onready var left_paddle: Paddle = $LeftPaddle
@onready var right_paddle: Paddle = $RightPaddle
@onready var ai_paddle: Paddle = $AIPaddle


func _ready():
	if Global.number_of_players == 1:
		right_paddle.hide()
		ai_paddle.show()
	elif Global.number_of_players == 2:
		right_paddle.show()
		ai_paddle.hide()
