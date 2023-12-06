extends Paddle

var target_direction = Vector2(0, 0)
var ball_last_position = Vector2(0, 0)


func _process(delta):
	if target_direction.y < 0:
		super.up(delta)

	if target_direction.y > 0:
		super.down(delta)


func _on_ball_moved(ball_position: Vector2) -> void:
	await get_tree().create_timer(0.2).timeout
	target_direction = ball_position - position

	if ball_position.x < ball_last_position.x:
		target_direction = Vector2(0, 0)

	ball_last_position = ball_position
