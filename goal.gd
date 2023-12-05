extends Area2D


func _on_area_entered(area: Area2D):
	if area.name == "Ball":
		area.reset()
