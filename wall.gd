extends Area2D

@onready var hit_sound = $HitSound


func _on_area_entered(area: Area2D):
	if area.name == "Ball":
		area.direction = Vector2(area.direction.x, -area.direction.y)
		hit_sound.play()
