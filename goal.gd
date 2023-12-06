extends Area2D


func _on_area_entered(area: Area2D):
	if area.name == "Ball":
		area.reset()

		if name == "LeftGoal":
			get_node("/root/Arena/RightScore").increment()
		elif name == "RightGoal":
			get_node("/root/Arena/LeftScore").increment()
