class_name Paddle

extends Area2D

const MOVEMENT_SPEED = 400


func up(delta) -> void:
	position.y -= MOVEMENT_SPEED * delta


func down(delta) -> void:
	position.y += MOVEMENT_SPEED * delta


func _on_area_entered(area: Area2D):
	if area.name == "Ball":
		area.direction = Vector2(-area.direction.x, area.direction.y).rotated(
			deg_to_rad(randf_range(-15, 15))
		)
