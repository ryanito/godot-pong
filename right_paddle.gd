extends Paddle


func _process(delta):
	if Input.is_action_pressed("right_paddle_up"):
		super.up(delta)

	if Input.is_action_pressed("right_paddle_down"):
		super.down(delta)
