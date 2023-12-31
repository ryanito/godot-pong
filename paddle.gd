class_name Paddle

extends Area2D

const MOVEMENT_SPEED = 400

@onready var collision_shape = $CollisionShape2D
@onready var hit_sound = $HitSound


func up(delta) -> void:
	if position.y > collision_shape.shape.size.y / 2:
		position.y -= MOVEMENT_SPEED * delta


func down(delta) -> void:
	if position.y < 800 - (collision_shape.shape.size.y / 2):
		position.y += MOVEMENT_SPEED * delta


func _on_area_entered(area: Area2D):
	if area.name == "Ball":
		area.direction = Vector2(-area.direction.x, area.direction.y).rotated(
			deg_to_rad(randf_range(-30, 30))
		)

		hit_sound.play()
