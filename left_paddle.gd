extends Paddle


func _process(delta):
	if Input.is_action_pressed("left_paddle_up"):
		super.up(delta)

	if Input.is_action_pressed("left_paddle_down"):
		super.down(delta)
