extends Area2D

signal moved(position: Vector2)

const SPEED = 500

var direction
var start_position


func _ready():
	direction = random_direction()
	start_position = position


func _process(delta):
	translate(direction * SPEED * delta)
	moved.emit(position)


func reset():
	direction = random_direction()
	position = start_position


func random_direction():
	var angle = randf_range(-PI / 4, PI / 4)
	return Vector2(cos(angle), sin(angle))
