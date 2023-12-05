extends Area2D

const SPEED = 500

var direction
var start_position


func _ready():
	direction = random_direction()
	start_position = position


func _process(delta):
	translate(direction * SPEED * delta)


func reset():
	direction = random_direction()
	position = start_position


func random_direction():
	return Vector2(randf_range(-1, 1), randf_range(-0.5, 0.5)).normalized()
